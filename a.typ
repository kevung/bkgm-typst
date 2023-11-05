#let conf = (
    board : (
        direction: right,
        thickness: 3pt,
        outerColor: black,
        innerColor: yellow,
    ),
    cube : (
        size: 32pt,
        color: black,
        textSize: 24pt,
        textColor: white,
        offset: 1.5pt,
    ),
    checker : (
        size: 30pt,
        color1: white,
        color2: black
    ),
    point: (
        textSize: 19pt,
        color1: blue,
        color2: red
    ),
)

#let _drawCube(value, textSize: 24pt) = square(
    size: conf.cube.size,
    fill: conf.cube.color, radius: 5pt,
    [
    #set align(center + horizon)
    #set text(size: conf.cube.textSize , fill: conf.cube.textColor)
    #value
    ])

#let cube = (
    direction: conf.board.direction.inv()
)

#let board = (
    width: 13*conf.checker.size,
    height: 11*conf.checker.size,
)

#let pointNumber(arg, vertAlign) = square(
    size: conf.checker.size, 
    [
    #set align(center + vertAlign)
    #set text(size: conf.point.textSize)
    #arg
    ]
)

#let quadrantNumber(num) = {
if num == 1 [
    #if conf.board.direction == right [
        #stack(
            dir: rtl,
            pointNumber(1, top),
            pointNumber(2, top),
            pointNumber(3, top),
            pointNumber(4, top),
            pointNumber(5, top),
            pointNumber(6, top),
        )
        ] else [ 
        #stack(
            dir: ltr,
            pointNumber(1, top),
            pointNumber(2, top),
            pointNumber(3, top),
            pointNumber(4, top),
            pointNumber(5, top),
            pointNumber(6, top),
        )

        ]
        ] else if num == 2 [
    #if conf.board.direction == right [
        #stack(
            dir: rtl,
            pointNumber(7, top),
            pointNumber(8, top),
            pointNumber(9, top),
            pointNumber(10, top),
            pointNumber(11, top),
            pointNumber(12, top),
        )
        ] else [ 
        #stack(
            dir: ltr,
            pointNumber(7, top),
            pointNumber(8, top),
            pointNumber(9, top),
            pointNumber(10, top),
            pointNumber(11, top),
            pointNumber(12, top),
        )

        ]
        ] else if num == 3 [
    #if conf.board.direction == right [
        #stack(
            dir: ltr,
            pointNumber(13, bottom),
            pointNumber(14, bottom),
            pointNumber(15, bottom),
            pointNumber(16, bottom),
            pointNumber(17, bottom),
            pointNumber(18, bottom),
        )
        ] else [ 
        #stack(
            dir: rtl,
            pointNumber(13, bottom),
            pointNumber(14, bottom),
            pointNumber(15, bottom),
            pointNumber(16, bottom),
            pointNumber(17, bottom),
            pointNumber(18, bottom),
        )

        ]
        ] else [
    #if conf.board.direction == right [
        #stack(
            dir: ltr,
            pointNumber(19, bottom),
            pointNumber(20, bottom),
            pointNumber(21, bottom),
            pointNumber(22, bottom),
            pointNumber(23, bottom),
            pointNumber(24, bottom),
        )
        ] else [ 
        #stack(
            dir: rtl,
            pointNumber(19, bottom),
            pointNumber(20, bottom),
            pointNumber(21, bottom),
            pointNumber(22, bottom),
            pointNumber(23, bottom),
            pointNumber(24, bottom),
        )

        ]
        ]
}

#let _drawBoard = rect(
    width: board.width + 2*conf.board.thickness,
    height: board.height +2*conf.board.thickness,
    fill: conf.board.outerColor,
    [

    #let bar = rect(
        width: 1*conf.checker.size,
        height: 11*conf.checker.size,
    )

    #let triangle = (
        id1: polygon(
            fill: conf.point.color1.lighten(80%),
            stroke: conf.point.color1,
            (0%, 0pt),
            (conf.checker.size, 0pt),
            (0.5*conf.checker.size, 5*conf.checker.size),
        ),
        id2: polygon(
            fill: conf.point.color2.lighten(80%),
            stroke: conf.point.color2,
            (0%, 0pt),
            (conf.checker.size, 0pt),
            (0.5*conf.checker.size, 5*conf.checker.size),
        )
    )

    #let quadrant = stack(
        dir: ltr,
        triangle.id1,
        triangle.id2,
        triangle.id1,
        triangle.id2,
        triangle.id1,
        triangle.id2,
    )

    #let checker = (
        id1: circle(
            radius: 0.5 * conf.checker.size,
            fill: conf.checker.color1,
            stroke: black),
        id2: circle(
            radius: 0.5 * conf.checker.size,
            fill: conf.checker.color1,
            stroke: black)
    )



    #place(horizon + center,
        rect(
            width: board.width,
            height: board.height,
            fill: conf.board.innerColor,
            inset: 0pt,
            [

            #place(top + center, bar)

            #if conf.board.direction == right [
                #place(bottom + cube.direction,
                    dx: -conf.cube.size -conf.board.thickness -conf.cube.offset,
                    _drawCube(2))
                ] else [
                #place(bottom + cube.direction,
                    dx: conf.cube.size +conf.board.thickness +conf.cube.offset,
                    _drawCube(2))
                ]

            #place(top + left, quadrant)
            #place(top + right, quadrant)
            #place(bottom + left, rotate(180deg)[#quadrant])
            #place(bottom + right, rotate(180deg)[#quadrant])

            // quadrant number
            #if conf.board.direction == right [
            #place(top + left, dy: -conf.checker.size -conf.board.thickness,
                quadrantNumber(3))
            #place(top + right, dy: -conf.checker.size -conf.board.thickness,
                quadrantNumber(4))
            #place(bottom + left, dy: conf.checker.size +conf.board.thickness,
                quadrantNumber(2))
            #place(bottom + right, dy: conf.checker.size +conf.board.thickness,
                quadrantNumber(1))
            ] else if conf.board.direction == left [
            #place(top + right, dy: -conf.checker.size -conf.board.thickness,
                quadrantNumber(3))
            #place(top + left, dy: -conf.checker.size -conf.board.thickness,
                quadrantNumber(4))
            #place(bottom + right, dy: conf.checker.size +conf.board.thickness,
                quadrantNumber(2))
            #place(bottom + left, dy: conf.checker.size +conf.board.thickness,
                quadrantNumber(1))
            ]

[

                                //white checkers

                #place(
                    bottom + left,
                    dx: (6 -1) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        checker.id2,
                        checker.id2,
                    )
                )

                #place(
                    top + right,
                    dx: (1 -2) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        checker.id2,
                        checker.id2,
                    )
                )

                #place(
                    top + right,
                    dx: (1 -1) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        checker.id2,
                        checker.id2,
                        checker.id2,
                        checker.id2,
                        circle(radius: 0.5 * conf.checker.size, fill: white, stroke: black, 
                            [
                            #set align(center + horizon)
                            #set text(size: 19pt)
                            7
                            ]),
                    )
                )

                #place(
                    top + right,
                    dx: 1.1 * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        spacing: 2.3pt,
                        rect(width: conf.checker.size, height: 0.13 * conf.checker.size, fill: white, stroke: black),
                        rect(width: conf.checker.size, height: 0.13 * conf.checker.size, fill: white, stroke: black),
                        rect(width: conf.checker.size, height: 0.13 * conf.checker.size, fill: white, stroke: black),
                        rect(width: conf.checker.size, height: 0.13 * conf.checker.size, fill: white, stroke: black),
                        rect(width: conf.checker.size, height: 0.13 * conf.checker.size, fill: white, stroke: black),
                    )
                )

                // black checkers

                #place(
                    center + horizon,
                    dx: 0 * conf.checker.size,
                    dy: -1 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    top + right,
                    dx: (1 -5) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + left,
                    dx: (1 -1) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + left,
                    dx: (2 -1) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + right,
                    dx: (1 -6) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + right,
                    dx: (1 -5) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + right,
                    dx: (1 -4) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + right,
                    dx: (1 -3) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                #place(
                    bottom + right,
                    dx: (1 -2) * conf.checker.size,
                    dy: 0 * conf.checker.size,
                    stack(
                        dir:ttb,
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                        circle(radius: 0.5 * conf.checker.size, fill: black, stroke: black),
                    )
                )

                // end board
                ]

            ]
        )
    )
    ]
)

#let infoDisplay(msg, alignDir, textSize: 12pt) = rect(
    width: (board.width +2*conf.checker.size +2*conf.board.thickness)/2,
    height: conf.checker.size,
    [
    #set text(size: textSize)
    #set align(alignDir)
    #msg
    ]
)


#set align(center)

#grid(
    rows: (conf.checker.size, auto, conf.checker.size),
    gutter: 3pt,

    grid(
        columns: (auto, auto),
        gutter: 3pt,
        infoDisplay("Unlimited match", left + horizon),
        infoDisplay("(5 checkers off) pip: 29", right + horizon),
    ),

    rect(
        width: board.width +2*conf.checker.size +2*conf.board.thickness,
        height: board.height +2*conf.checker.size +2*conf.board.thickness,
        inset: 0pt,
        [ #place(horizon + center, _drawBoard) ]
    ),

    grid(
        columns: (auto, auto),
        gutter: 3pt,
        infoDisplay("", left + horizon),
        infoDisplay("pip: 114", right + horizon),
    ),

) // end grid

