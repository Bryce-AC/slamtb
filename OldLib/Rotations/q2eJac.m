function Eq = q2eJac(q)

a = q(1);
b = q(2);
c = q(3);
d = q(4);


s1 =                  a^2+b^2-c^2-d^2;
s2 =                      2*b*c+2*a*d;
s3 =  1-4*b^2*d^2+8*b*d*a*c-4*a^2*c^2;
s4 =                  a^2-b^2-c^2+d^2;
s5 =                      2*c*d+2*a*b;

is1   = 1/s1;
is12  = is1^2;
is35  = 1/s3^(1/2);
is4   = 1/s4;
is42  = is4^2;
r542  = s5*is42;
r5242 = s5^2*is42;
r212  = s2*is12;
r2212 = s2^2*is12;

Eq = 2 * [...
[ (b*is4-r542*a)/(1+r5242), (a*is4+r542*b)/(1+r5242), (d*is4+r542*c)/(1+r5242), (c*is4-r542*d)/(1+r5242)]
[                   c*is35,                  -d*is35,                   a*is35,                  -b*is35]
[ (d*is1-r212*a)/(1+r2212), (c*is1-r212*b)/(1+r2212), (b*is1+r212*c)/(1+r2212), (a*is1+r212*d)/(1+r2212)]
];