
// Limite du board
#let checker_radius = 30

#set align(center)

// table
#rect(width: 15*30pt, height: 13*30pt, inset: 0pt,
    [

    // point numbers
    #place(top + left,
        dx: 1 * 30pt,
        dy: -0.1pt,
        stack(
            dir:ltr,

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                13
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                14
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                15
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                16
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                17
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                18
                ]
            ),

        )
    )

    #place(top + right,
        dx: -1 * 30pt,
        dy: -0.2pt,
        stack(
            dir:ltr,

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                19
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                20
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                21
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                22
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                23
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + bottom)
                #set text(size: 19pt)
                24
                ]
            ),

        )
    )    

    #place(bottom + left,
        dx: 1 * 30pt,
        dy: -0.1pt,
        stack(
            dir:ltr,

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                12
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                11
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                10
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                9
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                8
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                7
                ]
            ),

        )
    )

    #place(bottom + right,
        dx: -1 * 30pt,
        dy: -0.1pt,
        stack(
            dir:ltr,

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                6
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                5
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                4
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                3
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                2
                ]
            ),

            square(size: 30pt, 
                [
                #set align(center + top)
                #set text(size: 19pt)
                1
                ]
            ),

        )
    )

    // board

    // outer board
    #place(horizon + center,
        rect(width: 13.2*30pt, height: 11.2*30pt, fill: black, inset: 0pt) // thickness 0.1
    )


    // background board
    #place(horizon + center,
        rect(width: 13*30pt, height: 11*30pt, fill: yellow, inset: 0pt)
    )

    // inner board
    #place(horizon + center,
        rect(width: 13*30pt, height: 11*30pt, inset: 0pt,
            [

            // cube
            #place(bottom + left,
                dx: -1.2 * 30pt,
                square(size: 30pt, fill: black, radius: 5pt,
                    [
                    #set align(center + horizon)
                    #set text(size: 24pt, fill: white)
                    2
                    ])
            )

            // checker bar
            #place(top + center,
                dx: 0pt,
                dy: 0pt,
                rect(width: 1*30pt, height: 11*30pt, inset: 0pt))

            // third quadrant
            #place(top + left,
                dx: 0pt,
                dy: 0pt,

                stack(
                    dir:ltr,

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),


                )
            )

            // fourth quadrant 
            #place(top + right,
                dx: 0pt,
                dy: 0pt,

                stack(
                    dir:ltr,

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),


                )
            )

            // second quadrant
            #place(bottom + left,
                dx: 0pt,
                dy: 0pt,

                rotate(180deg)[

                #stack(
                    dir:ltr,

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),


                )
                ]
            )

            // first quadrant
            #place(bottom + right,
                dx: 0pt,
                dy: 0pt,

                rotate(180deg)[

                #stack(
                    dir:ltr,

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: blue.lighten(80%),
                        stroke: blue,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),

                    polygon(
                        fill: red.lighten(80%),
                        stroke: red,
                        (0%, 0pt),
                        (30pt, 0pt),
                        (0.5*30pt, 5*30pt),
                    ),


                )
                ]
            )

            //white checkers

            #place(
                bottom + left,
                dx: (6 -1) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                )
            )

            #place(
                top + right,
                dx: (1 -2) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                )
            )

            #place(
                top + right,
                dx: (1 -1) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: white, stroke: black, 
                        [
                        #set align(center + horizon)
                        #set text(size: 19pt)
                        7
                        ]),
                )
            )

            #place(
                top + right,
                dx: 1.1 * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    spacing: 2.3pt,
                    rect(width: 30pt, height: 0.13 * 30pt, fill: white, stroke: black),
                    rect(width: 30pt, height: 0.13 * 30pt, fill: white, stroke: black),
                    rect(width: 30pt, height: 0.13 * 30pt, fill: white, stroke: black),
                    rect(width: 30pt, height: 0.13 * 30pt, fill: white, stroke: black),
                    rect(width: 30pt, height: 0.13 * 30pt, fill: white, stroke: black),
                )
            )

            // black checkers

            #place(
                center + horizon,
                dx: 0 * 30pt,
                dy: -1 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                top + right,
                dx: (1 -5) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + left,
                dx: (1 -1) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + left,
                dx: (2 -1) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + right,
                dx: (1 -6) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + right,
                dx: (1 -5) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + right,
                dx: (1 -4) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + right,
                dx: (1 -3) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            #place(
                bottom + right,
                dx: (1 -2) * 30pt,
                dy: 0 * 30pt,
                stack(
                    dir:ttb,
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                    circle(radius: 0.5 * 30pt, fill: black, stroke: black),
                )
            )

            // end board
            ]
        ) 
    )


    // end table
    ]
)

