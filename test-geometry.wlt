BeginTestSection["test-geometry"]

BeginTestSection["Helper Functions"]

VerificationTest[(* 1 *)
	\[Lambda]=.;
eleFunc1[\[Lambda]List_]:=\[Lambda]List[[1]] + \[Lambda]List[[2]];
GetTable[
{\[Lambda][1], \[Lambda][2]}, 
eleFunc1,
{\[Lambda][1], 4},{\[Lambda][2], 4}
]
	,
	{
{2, 3, 4, 5}, 
{3, 4, 5, 6},
{4, 5, 6, 7},
{5, 6, 7, 8}
}	
]

VerificationTest[(* 2 *)
	\[Lambda]=.;
eleFunc2[\[Lambda]List_]:=Signature[{\[Lambda][1], \[Lambda][2]}];

GetTable[
{\[Lambda][1], \[Lambda][2]}, 
eleFunc2,
{\[Lambda][1], 4},{\[Lambda][2], 4}
]
	,
	{
{0, 1, 1, 1}, 
{-1, 0, 1, 1},
{-1, -1, 0, 1},
{-1, -1, -1, 0}
}	
]

EndTestSection[]

BeginTestSection["Linear Algebra"]

BeginTestSection["Differential Geometry"]

EndTestSection[]

VerificationTest[(* 3 *)
	\[Omega]=Cos[x3]d[x1]\[Wedge]d[x2];
FormCoefficients[\[Omega], {x1, x2, x3, x4}]
	,
	{
{0, Cos[x3], 0, 0}, 
{-Cos[x3], 0, 0, 0},
{0, 0, 0, 0},
{0, 0, 0, 0}
}	
]

VerificationTest[(* 4 *)
	\[Omega]=Cos[\[Theta]]d[\[Phi]];
FormCoefficients[\[Omega], {\[Phi], \[Chi], \[Theta], \[Tau]}]
	,
	{Cos[\[Theta]],  0, 0, 0}	
]

EndTestSection[]

BeginTestSection["Riemannian Geometry"]

VerificationTest[(* 5 *)
	\[Epsilon]\[Mu]\[UnderBracket]Subscript\[UnderBracket]\[Nu][{1,  2, 3},  {4}, DiagonalMatrix[{1,  1, 1, 1}]]
	,
	1	
]

VerificationTest[(* 6 *)
	\[Epsilon]\[Mu]\[UnderBracket]Subscript\[UnderBracket]\[Nu][{1,  2, 3, 4},  {}, DiagonalMatrix[{1,  1, 1, 1}]]
	,
	1	
]

VerificationTest[(* 7 *)
	\[Epsilon]\[Mu]\[UnderBracket]Subscript\[UnderBracket]\[Nu][{},  {1,  2, 3, 4}, DiagonalMatrix[{1,  2, 3, 4}]]
	,
	1	
]

VerificationTest[(* 8 *)
	dx\[Mu][{2,  3, 4},  {\[Phi],  \[Chi], \[Theta], \[Tau]}]
	,
	d[\[Tau]] \[Wedge] d[\[Chi]] \[Wedge] d[\[Theta]]	
]

VerificationTest[(* 9 *)
	HodgeStardx[
{1, 2, 3, 4}, 
{\[Phi], \[Chi], \[Theta], \[Tau]},
DiagonalMatrix[{1, 2, 3, 4}]
]
	,
	1/Sqrt[24]	
]

VerificationTest[(* 10 *)
	HodgeStardx[
{}, 
{\[Phi], \[Chi], \[Theta], \[Tau]},
DiagonalMatrix[{1, 2, 3, 4}]
]
	,
	Sqrt[24]*d[\[Phi]] \[Wedge] d[\[Chi]] \[Wedge] d[\[Theta]] \[Wedge] d[\[Tau]]	
]

VerificationTest[(* 11 *)
	\[Omega]=d[x1]\[Wedge]d[x2];
HodgeStar[\[Omega], {x1, x2, x3, x4}, DiagonalMatrix[{1, 1, 1, 1}]]
	,
	d[x3] \[Wedge] d[x4]	
]

VerificationTest[(* 12 *)
	\[Omega]=d[x1]\[Wedge]d[x2];
HodgeStar[\[Omega], {x1, x2, x3, x4}, DiagonalMatrix[{1, 2^2, 3^2, 4^2}]]
	,
	6*d[x3] \[Wedge] d[x4]	
]

EndTestSection[]

EndTestSection[]
