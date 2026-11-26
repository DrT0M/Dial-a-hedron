/*[Dial-a-hedron -- Stellated Polyhedron Custom Designer]*/
/*
Subdivide each of the icosahedron regular triangle face to 
3 kites, each defined by a vertex of the face,
2 midpoints of edges on both sides of the vertex, and
the center of triangle [equivalently the vertex of the dodecahedron (dual of the icosahedron)].
Dial by varying the radius of the midpoints and/or center relative to the vertex;
theta and phi of the spherical coordinates remain the same.

Kite is not necessarily coplanar.
Subdivide kite into triangles (2 ways) --
Split along long kite diagonal: vertex-center-midpoint and vertex-center-other-midpoint
Split along short kite diagonal: vertex-midpoint-midpoint and center-midpoint-midpoint

split_type	center_ratio	mid_pt_ratio	model
0 or 1		1.255		1.173		dodecahedron
0 or 1		0.793		0.849		icosahedron
0		0.911		0.849		icosahedron dodecahedron compound
0 or 1		0.957		0.975		deltoidal hexecontahedron
0		0.911		0.975		pentakis icosidodecahedron
0		1.093		1.173		icosidodecahedron
1		0.911		0.849		rhombic triacontahedron
1		1.066		0.849		small triambic icosahedron
1		1.170		1.008		small icosacronic hexecontahedron
1		1.000		0.934		pentakis dodecahedron
1		0.911		1.051		golden 120 (first stellation of rhombic triacontahedron)
1		1.066		1.376		octahedron 5 compound
*/
//
	Mode = 0; //[1:dodecahedron,2:icosahedron,3:icosahedron+dodecahedron,9:deltoidal hexecontahedron,10:pentakis icosidodecahedron,11:icosidodecahedron,8:rhombic triacontahedron,7:small triambic icosahedron,6:small icosacronic hexecontahedron,12:pentakis dodecahedron,5:golden 120,4:5 octahedra,0:Customize with values below]
//splitting the 3 kites on a icosahedron face by their
	Split_Type = 0; //[0:0=short diagonal,1:1=long diagonal]
//ratio of face center radius to icosahedron vertex radius
	Center_Ratio = 0.911;	//[0:0.001:1.5]
//ratio of edge midpoint radius to icosahedron vertex radius
	Mid_pt_Ratio = 0.849;	//[0:0.001:1.5]

/*****************************************************************************/
//	Dial-a-hedron Stellated Polyhedron Custom Designer is licensed under
//	MIT License
//
//	Copyright (c) 2026 DrT0M
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights
//	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//	copies of the Software, and to permit persons to whom the Software is
//	furnished to do so, subject to the following conditions:
//	
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//	SOFTWARE.
//
{}	//tab stop @ 8
/*****************************************************************************/
	split_type =	( Mode == 1 ?	0	//dodecahedron
		:	( Mode == 2 ?	0	//icosahedron
		:	( Mode == 3 ?	0	//icosahedron dodecahedron compound
		:	( Mode == 4 ?	1	//octahedron 5 compound
		:	( Mode == 5 ?	1	//golden 120
		:	( Mode == 6 ?	1	//small icosacronic hexecontahedron
		:	( Mode == 7 ?	1	//small triambic icosahedron
		:	( Mode == 8 ?	1	//rhombic triacontahedron
		:	( Mode == 9 ?	1	//deltoidal hexecontahedron
		:	( Mode == 10 ?	0	//pentakis icosidodecahedron
		:	( Mode == 11 ?	0	//icosidodecahedron
		:	( Mode == 12 ?	1	//pentakis dodecahedron
		:	/*Mode == 0*/	Split_Type ))))))))))));

	center_ratio =	( Mode == 1 ?	1.255	//dodecahedron
		:	( Mode == 2 ?	0.793	//icosahedron
		:	( Mode == 3 ?	0.911	//icosahedron dodecahedron compound
		:	( Mode == 4 ?	1.066	//octahedron 5 compound
		:	( Mode == 5 ?	0.911	//golden 120
		:	( Mode == 6 ?	1.170	//small icosacronic hexecontahedron
		:	( Mode == 7 ?	1.066	//small triambic icosahedron
		:	( Mode == 8 ?	0.911	//rhombic triacontahedron
		:	( Mode == 9 ?	0.957	//deltoidal hexecontahedron
		:	( Mode == 10 ?	0.911	//pentakis icosidodecahedron
		:	( Mode == 11 ?	1.093	//icosidodecahedron
		:	( Mode == 12 ?	1.000	//pentakis dodecahedron
		:	/*Mode == 0*/	Center_Ratio ))))))))))));

	mid_pt_ratio =	( Mode == 1 ?	1.173	//dodecahedron
		:	( Mode == 2 ?	0.849	//icosahedron
		:	( Mode == 3 ?	0.849	//icosahedron dodecahedron compound
		:	( Mode == 4 ?	1.376	//octahedron 5 compound
		:	( Mode == 5 ?	1.051	//golden 120
		:	( Mode == 6 ?	1.008	//small icosacronic hexecontahedron
		:	( Mode == 7 ?	0.849	//small triambic icosahedron
		:	( Mode == 8 ?	0.849	//rhombic triacontahedron
		:	( Mode == 9 ?	0.975	//deltoidal hexecontahedron
		:	( Mode == 10 ?	0.975	//pentakis icosidodecahedron
		:	( Mode == 11 ?	1.173	//icosidodecahedron
		:	( Mode == 12 ?	0.934	//pentakis dodecahedron
		:	/*Mode == 0*/	Mid_pt_Ratio ))))))))))));

//echo("Mode=", Mode, "split_type=", split_type, "center_ratio=", center_ratio, "mid_pt_ratio=", mid_pt_ratio);

/*****************************************************************************/
G = (sqrt(5)+1)/2;		//Golden ratio
cos_t = 1/sqrt(5);		//triangle with side lengths 1,2,5
sin_t = 2*cos_t;		//	2/sqrt(5);
tan_t = 2;
t = atan(2);			//theta
r = 1;

b = 1;	c = 0;		//subdivision description
T = b^2 + b*c + c^2;	//triangulation number
Npoints = 10*T + 2;
Nfacets = 20*T;
Njoints = 30*T;

icosahedron_sphord=		//	physics convention: radial distance, polar angle, azimuthal angle
[[r	,t	,0	]	//0
,[r	,180-t	,-36	]	//1
,[r	,t	,-72	]	//2
,[r	,180-t	,-108	]	//3
,[r	,t	,-144	]	//4
,[r	,180-t	,180	]	//5
,[r	,t	,144	]	//6
,[r	,180-t	,108	]	//7
,[r	,t	,72	]	//8
,[r	,180-t	,36	]	//9
,[r	,0	,0	]	//10	North Pole
,[r	,180	,0	]	//11	South Pole
];
//12 vertices
icosahedron_points = spherical_to_cartesian( icosahedron_sphord );

function spherical_to_cartesian( spherical_coords ) =
//spherical to cartesian
//z = r cos_theta
//y = r sin_theta sin_phi
//x = r sin_theta cos_phi
[
	for( coord = spherical_coords )
	let(	r = coord[ 0 ]	//radial (from center)
	,	t = coord[ 1 ]	//theta (from north pole/90-latitude)
	,	p = coord[ 2 ]	//phi (longitude/prime meridian)
	,	z = r*cos(t),	r_sin_t = r*sin(t)
	,	y = r_sin_t*sin(p)
	,	x = r_sin_t*cos(p)
	)
	[x,y,z]
];

function cartesian_to_spherical( cartesian_coords ) =
//cartesian_to_spherical
[
	for( coord = cartesian_coords )
	let(	x = coord[ 0 ]
	,	y = coord[ 1 ]
	,	z = coord[ 2 ]
	,	r_cos_t = z
	,	r_sin_t = sqrt(x^2+y^2)
//	,	r = sqrt(x^2+y^2+z^2)		//radial (from center)
	,	r = norm(coord)			//radial (from center)
	,	t = atan2(r_sin_t,r_cos_t)	//theta (from north pole/90-latitude)
	,	p = atan2(y,x)			//phi (longitude/prime meridian)
	)
	[r,t,p]
];
//20 equilateral triangles
icosahedron_facets=
[	[10	,0	,2	],	[0	,1	,2	],	[3	,2	,1	],	[3	,1	,11	]
,	[10	,2	,4	],	[2	,3	,4	],	[5	,4	,3	],	[5	,3	,11	]
,	[10	,4	,6	],	[4	,5	,6	],	[7	,6	,5	],	[7	,5	,11	]
,	[10	,6	,8	],	[6	,7	,8	],	[9	,8	,7	],	[9	,7	,11	]
,	[10	,8	,0	],	[8	,9	,0	],	[1	,0	,9	],	[1	,9	,11	]
];//	NP:north circumpolar		NQ:north equatorial		SQ:south equatorial		SP:south circumpolar		

/*****************************************************************************/
edge_middle_cartes =
[
	for(k=[0:len(icosahedron_facets)-1])
	[	(icosahedron_points[icosahedron_facets[k][0]].x
		+icosahedron_points[icosahedron_facets[k][1]].x)/2
	,	(icosahedron_points[icosahedron_facets[k][0]].y
		+icosahedron_points[icosahedron_facets[k][1]].y)/2
	,	(icosahedron_points[icosahedron_facets[k][0]].z
		+icosahedron_points[icosahedron_facets[k][1]].z)/2
	]
	,
	for(k=[0:len(icosahedron_facets)-1])
	[	(icosahedron_points[icosahedron_facets[k][1]].x
		+icosahedron_points[icosahedron_facets[k][2]].x)/2
	,	(icosahedron_points[icosahedron_facets[k][1]].y
		+icosahedron_points[icosahedron_facets[k][2]].y)/2
	,	(icosahedron_points[icosahedron_facets[k][1]].z
		+icosahedron_points[icosahedron_facets[k][2]].z)/2
	]
	,
	for(k=[0:len(icosahedron_facets)-1])
	[	(icosahedron_points[icosahedron_facets[k][2]].x
		+icosahedron_points[icosahedron_facets[k][0]].x)/2
	,	(icosahedron_points[icosahedron_facets[k][2]].y
		+icosahedron_points[icosahedron_facets[k][0]].y)/2
	,	(icosahedron_points[icosahedron_facets[k][2]].z
		+icosahedron_points[icosahedron_facets[k][0]].z)/2
	]
];

edge_middle_spheric = cartesian_to_spherical( edge_middle_cartes );
//	echo("edge_middle_spheric[0]",edge_middle_spheric[0]);

edge_middle_points = spherical_to_cartesian(
[
	for(k=[0:len(edge_middle_spheric)-1])
	[//	edge_middle_spheric[k][0]
//		0.85	//planar (unit icosahedron)
//		0.935	//icosahedron dodecahedron ball
		mid_pt_ratio
	,	edge_middle_spheric[k][1]
	,	edge_middle_spheric[k][2]
	]
]);

/*****************************************************************************/
//20 vertices
dodecahedron_cartes=
[
	for(k=[0:len(icosahedron_facets)-1])
	[	(icosahedron_points[icosahedron_facets[k][0]].x
		+icosahedron_points[icosahedron_facets[k][1]].x
		+icosahedron_points[icosahedron_facets[k][2]].x)/3
	,	(icosahedron_points[icosahedron_facets[k][0]].y
		+icosahedron_points[icosahedron_facets[k][1]].y
		+icosahedron_points[icosahedron_facets[k][2]].y)/3
	,	(icosahedron_points[icosahedron_facets[k][0]].z
		+icosahedron_points[icosahedron_facets[k][1]].z
		+icosahedron_points[icosahedron_facets[k][2]].z)/3
	]
];

dodecahedron_spheric = cartesian_to_spherical( dodecahedron_cartes );
//	echo("dodecahedron_spheric[0]",dodecahedron_spheric[0]);

dodecahedron_points = spherical_to_cartesian( 
[
	for(k=[0:len(dodecahedron_spheric)-1])
	[//	dodecahedron_spheric[k][0]
//		0.79	//planar (unit icosahedron)
//		0.91	//icosahedron dodecahedron compound
//		1	//icosahedron dodecahedron ball
		center_ratio
	,	dodecahedron_spheric[k][1]
	,	dodecahedron_spheric[k][2]
	]
]);

/*****************************************************************************/
dialahedron_points=
[	each	icosahedron_points	//12 vertices
,	each	dodecahedron_points	//20 vertices
,	each	edge_middle_points	//60
];

dialahedron_facets_long =	//golden 120, 5 octahedra
[
	for(k=[0:len(icosahedron_facets)-1])	//0:19
	let(	center = k+12
	,	midpt0 = k+12+20
	,	midpt1 = k+12+40
	,	midpt2 = k+12+60
	,	vertex0 = icosahedron_facets[k][0]
	,	vertex1 = icosahedron_facets[k][1]
	,	vertex2 = icosahedron_facets[k][2]
	)
	//vertex, midpoint, center	//vertex, center, midpoint
	each [	[	vertex0	,	center	,	midpt2	]
	,	[	vertex0	,	midpt0	,	center	]
	,	[	vertex1	,	center	,	midpt0	]
	,	[	vertex1	,	midpt1	,	center	]
	,	[	vertex2	,	center	,	midpt1	]
	,	[	vertex2	,	midpt2	,	center	]
	]
];

dialahedron_facets_short = 	//icosahedron_dodecahedron
[
	for(k=[0:len(icosahedron_facets)-1])	//0:19
	let(	center = k+12
	,	midpt0 = k+12+20
	,	midpt1 = k+12+40
	,	midpt2 = k+12+60
	,	vertex0 = icosahedron_facets[k][0]
	,	vertex1 = icosahedron_facets[k][1]
	,	vertex2 = icosahedron_facets[k][2]
	)
	//vertex, midpoint, midpoint  	//center, midpoint, midpoint
	each [	[	vertex0	,	midpt0	,	midpt2	]
	,	[	midpt2	,	midpt0	,	center	]
	,	[	vertex1	,	midpt1	,	midpt0	]
	,	[	midpt0	,	midpt1	,	center	]
	,	[	vertex2	,	midpt2	,	midpt1	]
	,	[	midpt1	,	midpt2	,	center	]
	]
];

dialahedron_facets = split_type == 0
?	dialahedron_facets_short
:	dialahedron_facets_long
;

scale(20)
	polyhedron( dialahedron_points, dialahedron_facets, convexity=2 );
