module alu (a, b, inf, r, n, z, c, v);
input [31:0] a, b, inf;
output reg [31:0] r;
output reg n, z, c, v;
wire [31:0] ll1, lr1, rr1, a1, s1, m1, an1, o1, e1, mr1, mn1,
a2, s2, m2, an2, o2, e2, mr2, mn2,
a3, s3, m3, an3, o3, e3, mr3, mn3,
a4, s4, m4, an4, o4, e4, mr4, mn4;
wire ta1, ts1, tm1, tan1, to1, te1, tc1, tmr1, tmn1,
a1n, a1z, a1c, a1v, 
s1n, s1z, s1c, s1v, 
m1n, m1z, m1c, m1v, 
an1n, an1z, an1c, an1v, 
o1n, o1z, o1c, o1v,
e1n, e1z, e1c, e1v, 
c1n, c1z, c1c, c1v, 
mr1n, mr1z, mr1c, mr1v, 
mn1n, mn1z, mn1c, mn1v,
ta2, ts2, tm2, tan2, to2, te2, tc2, tmr2, tmn2,
a2n, a2z, a2c, a2v, 
s2n, s2z, s2c, s2v, 
m2n, m2z, m2c, m2v, 
an2n, an2z, an2c, an2v, 
o2n, o2z, o2c, o2v,
e2n, e2z, e2c, e2v, 
c2n, c2z, c2c, c2v, 
mr2n, mr2z, mr2c, mr2v, 
mn2n, mn2z, mn2c, mn2v,
ta3, ts3, tm3, tan3, to3, te3, tc3, tmr3, tmn3,
a3n, a3z, a3c, a3v, 
s3n, s3z, s3c, s3v, 
m3n, m3z, m3c, m3v, 
an3n, an3z, an3c, an3v, 
o3n, o3z, o3c, o3v,
e3n, e3z, e3c, e3v, 
c3n, c3z, c3c, c3v, 
mr3n, mr3z, mr3c, mr3v, 
mn3n, mn3z, mn3c, mn3v,
ta4, ts4, tm4, tan4, to4, te4, tc4, tmr4, tmn4,
a4n, a4z, a4c, a4v, 
s4n, s4z, s4c, s4v, 
m4n, m4z, m4c, m4v, 
an4n, an4z, an4c, an4v, 
o4n, o4z, o4c, o4v,
e4n, e4z, e4c, e4v, 
c4n, c4z, c4c, c4v, 
mr4n, mr4z, mr4c, mr4v, 
mn4n, mn4z, mn4c, mn4v;

addr1r2r3 add1(a, b, a1, a1n, a1z, a1c, a1v);
	cond cna1(a1n, a1z, a1c, a1v, a, b, inf[31:28], ta1);
subr1r2r3 sub1(a, b, s1, s1n, s1z, s1c, s1v);
	cond cns1(s1n, s1z, s1c, s1v, a, b, inf[31:28], ts1);
mulr1r2r3 mul1(a, b, m1, m1n, m1z, m1c, m1v);
	cond cnm1(m1n, m1z, m1c, m1v, a, b, inf[31:28], tm1);
andr1r2r3 and1(a, b, an1, an1n, an1z, an1c, an1v);
	cond cnan1(an1n, an1z, an1c, an1v, a, b, inf[31:28], tan1);
orrr1r2r3 orr1(a, b, o1, o1n, o1z, o1c, o1v);
	cond cno1(o1n, o1z, o1c, o1v, a, b, inf[31:28], to1);
eorr1r2r3 eor1(a, b, e1, e1n, e1z, e1c, e1v);
	cond cne1(e1n, e1z, e1c, e1v, a, b, inf[31:28], te1);
cmpr1r2 cmp1(a, b, c1n, c1z, c1c, c1v);
	cond cnc1(c1n, c1z, c1c, c1v, a, b, inf[31:28], tc1);
movr1r2 mov1(a, mr1, mr1n, mr1z, mr1c, mr1v);
	cond cnmr1(mr1n, mr1z, mr1c, mr1v, a, b, inf[31:28], tmr1);
movr1n movn1(a, mn1, mn1n, mn1z, mn1c, mn1v);
	cond cnmn1(mn1n, mn1z, mn1c, mn1v, a, b, inf[31:28], tmn1);

lsl lsl1(inf[10:6], a, ll1);

addr1r2r3 add2(ll1, b, a2, a2n, a2z, a2c, a2v);
	cond cna2(a2n, a2z, a2c, a2v, a, ll1, inf[31:28], ta2);
subr1r2r3 sub2(ll1, b, s2, s2n, s2z, s2c, s2v);
	cond cns2(s2n, s2z, s2c, s2v, a, ll1, inf[31:28], ts2);
mulr1r2r3 mul2(ll1, b, m2, m2n, m2z, m2c, m2v);
	cond cnm2(m2n, m2z, m2c, m2v, a, ll1, inf[31:28], tm2);
andr1r2r3 and2(ll1, b, an2, an2n, an2z, an2c, an2v);
	cond cnan2(an2n, an2z, an2c, an2v, a, ll1, inf[31:28], tan2);
orrr1r2r3 orr2(ll1, b, o2, o2n, o2z, o2c, o2v);
	cond cno2(o2n, o2z, o2c, o2v, a, ll1, inf[31:28], to2);
eorr1r2r3 eor2(ll1, b, e2, e2n, e2z, e2c, e2v);
	cond cne2(e2n, e2z, e2c, e2v, a, ll1, inf[31:28], te2);
cmpr1r2 cmp2(ll1, b, c2n, c2z, c2c, c2v);
	cond cnc2(c2n, c2z, c2c, c2v, a, ll1, inf[31:28], tc2);
movr1r2 mov2(ll1, mr2, mr2n, mr2z, mr2c, mr2v);
	cond cnmr2(mr2n, mr2z, mr2c, mr2v, a, ll1, inf[31:28], tmr2);
movr1n movn2(ll1, mn2, mn2n, mn2z, mn2c, mn2v);
	cond cnmn2(mn2n, mn2z, mn2c, mn2v, a, ll1, inf[31:28], tmn2);

lsr lsr1(inf[10:6], a, lr1);

addr1r2r3 add3(lr1, b, a3, a3n, a3z, a3c, a3v);
	cond cna3(a3n, a3z, a3c, a3v, a, lr1, inf[31:28], ta3);
subr1r2r3 sub3(lr1, b, s3, s3n, s3z, s3c, s3v);
	cond cns3(s3n, s3z, s3c, s3v, a, lr1, inf[31:28], ts3);
mulr1r2r3 mul3(lr1, b, m3, m3n, m3z, m3c, m3v);
	cond cnm3(m3n, m3z, m3c, m3v, a, lr1, inf[31:28], tm3);
andr1r2r3 and3(lr1, b, an3, an3n, an3z, an3c, an3v);
	cond cnan3(an3n, an3z, an3c, an3v, a, lr1, inf[31:28], tan3);
orrr1r2r3 orr3(lr1, b, o3, o3n, o3z, o3c, o3v);
	cond cno3(o3n, o3z, o3c, o3v, a, lr1, inf[31:28], to3);
eorr1r2r3 eor3(lr1, b, e3, e3n, e3z, e3c, e3v);
	cond cne3(e3n, e3z, e3c, e3v, a, lr1, inf[31:28], te3);
cmpr1r2 cmp3(lr1, b, c3n, c3z, c3c, c3v);
	cond cnc3(c3n, c3z, c3c, c3v, a, lr1, inf[31:28], tc3);
movr1r2 mov3(lr1, mr3, mr3n, mr3z, mr3c, mr3v);
	cond cnmr3(mr3n, mr3z, mr3c, mr3v, a, lr1, inf[31:28], tmr3);
movr1n movn3(lr1, mn3, mn3n, mn3z, mn3c, mn3v);
	cond cnmn3(mn3n, mn3z, mn3c, mn3v, a, lr1, inf[31:28], tmn3);

rr rrs1(inf[10:6], a, rr1);

addr1r2r3 add4(rr1, a, a4, a4n, a4z, a4c, a4v);
	cond cna4(a4n, a4z, a4c, a4v, a, rr1, inf[31:28], ta4);
subr1r2r3 sub4(rr1, a, s4, s4n, s4z, s4c, s4v);
	cond cns4(s4n, s4z, s4c, s4v, a, rr1, inf[31:28], ts4);
mulr1r2r3 mul4(rr1, a, m4, m4n, m4z, m4c, m4v);
	cond cnm4(m4n, m4z, m4c, m4v, a, rr1, inf[31:28], tm4);
andr1r2r3 and4(rr1, a, an4, an4n, an4z, an4c, an4v);
	cond cnan4(an4n, an4z, an4c, an4v, a, rr1, inf[31:28], tan4);
orrr1r2r3 orr4(rr1, a, o4, o4n, o4z, o4c, o4v);
	cond cno4(o4n, o4z, o4c, o4v, a, rr1, inf[31:28], to4);
eorr1r2r3 eor4(rr1, a, e4, e4n, e4z, e4c, e4v);
	cond cne4(e4n, e4z, e4c, e4v, a, rr1, inf[31:28], te4);
cmpr1r2 cmp4(rr1, a, c4n, c4z, c4c, c4v);
	cond cnc4(c4n, c4z, c4c, c4v, a, rr1, inf[31:28], tc4);
movr1r2 mov4(rr1, mr4, mr4n, mr4z, mr4c, mr4v);
	cond cnmr4(mr4n, mr4z, mr4c, mr4v, a, rr1, inf[31:28], tmr4);
movr1n movn4(rr1, mn4, mn4n, mn4z, mn4c, mn4v);
	cond cnmn4(mn4n, mn4z, mn4c, mn4v, a, rr1, inf[31:28], tmn4);

always @*
begin
	n = 1'b0;
	z = 1'b0;
	c = 1'b0;
	v = 1'b0;

	
	if (inf[2:0] == 3'b010)
	begin
		case(inf[27:24])
		4'b0000:if(ta2 == 1'b1) 
			begin 
				r = a2;
			 	if(inf[23] == 1'b1) begin n = a2n; z = a2z; c = a2c; v = a2v; end
			end
			else begin r = r; end
		4'b0001:if(ts2 == 1'b1)
			begin 
				r = s2;
			 	if(inf[23] == 1'b1) begin n = s2n; z = s2z; c = s2c; v = s2v; end
			end
			else begin r = r; end
		4'b0010:if(tm2 == 1'b1)
			begin 
				r = m2;
			 	if(inf[23] == 1'b1) begin n = m2n; z = m2z; c = m2c; v = m2v; end
			end
			else begin r = r; end
		4'b0011:if(tan2 == 1'b1)
			begin 
				r = an2;
			 	if(inf[23] == 1'b1) begin n = an2n; z = an2z; c = an2c; v = an2v; end
			end
			else begin r = r; end
		4'b0100:if(to2 == 1'b1)
			begin 
				r = o2;
			 	if(inf[23] == 1'b1) begin n = o2n; z = o2z; c = o2c; v = o2v; end
			end
			else begin r = r; end
		4'b0101:if(te2 == 1'b1)
			begin 
				r = e2;
			 	if(inf[23] == 1'b1) begin n = e2n; z = e2z; c = e1c; v = e2v; end
			end
			else begin r = r; end
		4'b0110:if(tc2 == 1'b1)
			begin
				n = c2n; z = c2z; c = c2c; v = c2v; r = r;
			end
		4'b0111:if(tmr2 == 1'b1) 
			begin 
				r = mr2;
			 	if(inf[23] == 1'b1) begin n = mr2n; z = mr2z; c = mr2c; v = mr2v; end
			end
			else begin r = r; end
		4'b1000:if(tmn2 == 1'b1)  
			begin 
				r = mn2;
			 	if(inf[23] == 1'b1) begin n = mn2n; z = mn2z; c = mn2c; v = mn2v; end
			end
			else begin r = r; end
		default: r = r;
		endcase
	end
	else if (inf[2:0] == 3'b001)
	begin
		case(inf[27:24])
		4'b0000:if(ta3 == 1'b1) 
			begin 
				r = a3;
			 	if(inf[23] == 1'b1) begin n = a3n; z = a3z; c = a3c; v = a3v; end
			end
			else begin r = r; end
		4'b0001:if(ts3 == 1'b1)
			begin 
				r = s3;
			 	if(inf[23] == 1'b1) begin n = s3n; z = s3z; c = s3c; v = s3v; end
			end
			else begin r = r; end
		4'b0010:if(tm3 == 1'b1)
			begin 
				r = m3;
			 	if(inf[23] == 1'b1) begin n = m3n; z = m3z; c = m3c; v = m3v; end
			end
			else begin r = r; end
		4'b0011:if(tan3 == 1'b1)
			begin 
				r = an3;
			 	if(inf[23] == 1'b1) begin n = an3n; z = an3z; c = an3c; v = an3v; end
			end
			else begin r = r; end
		4'b0100:if(to3 == 1'b1)
			begin 
				r = o3;
			 	if(inf[23] == 1'b1) begin n = o3n; z = o3z; c = o3c; v = o3v; end
			end
			else begin r = r; end
		4'b0101:if(te3 == 1'b1)
			begin 
				r = e3;
			 	if(inf[23] == 1'b1) begin n = e3n; z = e3z; c = e3c; v = e3v; end
			end
			else begin r = r; end
		4'b0110:if(tc3 == 1'b1)
			begin
				n = c3n; z = c3z; c = c3c; v = c3v; r = r;
			end
		4'b0111:if(tmr3 == 1'b1) 
			begin 
				r = mr3;
			 	if(inf[23] == 1'b1) begin n = mr3n; z = mr3z; c = mr3c; v = mr3v; end
			end
			else begin r = r; end
		4'b1000:if(tmn3 == 1'b1)  
			begin 
				r = mn3;
			 	if(inf[23] == 1'b1) begin n = mn3n; z = mn3z; c = mn3c; v = mn3v; end
			end
			else begin r = r; end
		default: r = r;
		endcase
	end
	else if (inf[2:0] == 3'b011)
	begin
		case(inf[27:24])
		4'b0000:if(ta4 == 1'b1) 
			begin 
				r = a4;
			 	if(inf[23] == 1'b1) begin n = a4n; z = a4z; c = a4c; v = a4v; end
			end
			else begin r = r; end
		4'b0001:if(ts4 == 1'b1)
			begin 
				r = s4;
			 	if(inf[23] == 1'b1) begin n = s4n; z = s4z; c = s4c; v = s4v; end
			end
			else begin r = r; end
		4'b0010:if(tm4 == 1'b1)
			begin 
				r = m4;
			 	if(inf[23] == 1'b1) begin n = m4n; z = m4z; c = m4c; v = m4v; end
			end
			else begin r = r; end
		4'b0011:if(tan4 == 1'b1)
			begin 
				r = an4;
			 	if(inf[23] == 1'b1) begin n = an4n; z = an4z; c = an4c; v = an4v; end
			end
			else begin r = r; end
		4'b0100:if(to4 == 1'b1)
			begin 
				r = o4;
			 	if(inf[23] == 1'b1) begin n = o4n; z = o4z; c = o4c; v = o4v; end
			end
			else begin r = r; end
		4'b0101:if(te4 == 1'b1)
			begin 
				r = e4;
			 	if(inf[23] == 1'b1) begin n = e3n; z = e3z; c = e3c; v = e3v; end
			end
			else begin r = r; end
		4'b0110:if(tc4 == 1'b1)
			begin
				n = c4n; z = c4z; c = c4c; v = c4v; r = r;
			end
		4'b0111:if(tmr4 == 1'b1) 
			begin 
				r = mr4;
			 	if(inf[23] == 1'b1) begin n = mr4n; z = mr4z; c = mr4c; v = mr4v; end
			end
			else begin r = r; end
		4'b1000:if(tmn4 == 1'b1)  
			begin 
				r = mn4;
			 	if(inf[23] == 1'b1) begin n = mn4n; z = mn4z; c = mn4c; v = mn4v; end
			end
			else begin r = r; end
		default: r = r;
		endcase
	end
	else
	begin
		case(inf[27:24])
		4'b0000:if(ta1 == 1'b1) 
			begin 
				r = a1;
			 	if(inf[23] == 1'b1) begin n = a1n; z = a1z; c = a1c; v = a1v; end
			end
			else begin r = r; end
		4'b0001:if(ts1 == 1'b1)
			begin 
				r = s1;
			 	if(inf[23] == 1'b1) begin n = s1n; z = s1z; c = s1c; v = s1v; end
			end
			else begin r = r; end
		4'b0010:if(tm1 == 1'b1)
			begin 
				r = m1;
			 	if(inf[23] == 1'b1) begin n = m1n; z = m1z; c = m1c; v = m1v; end
			end
			else begin r = r; end
		4'b0011:if(tan1 == 1'b1)
			begin 
				r = an1;
			 	if(inf[23] == 1'b1) begin n = an1n; z = an1z; c = an1c; v = an1v; end
			end
			else begin r = r; end
		4'b0100:if(to1 == 1'b1)
			begin 
				r = o1;
			 	if(inf[23] == 1'b1) begin n = o1n; z = o1z; c = o1c; v = o1v; end
			end
			else begin r = r; end
		4'b0101:if(te1 == 1'b1)
			begin 
				r = e1;
			 	if(inf[23] == 1'b1) begin n = e1n; z = e1z; c = e1c; v = e1v; end
			end
			else begin r = r; end
		4'b0110:if(tc1 == 1'b1)
			begin
				n = c1n; z = c1z; c = c1c; v = c1v; r = r;
			end
		4'b0111:if(tmr1 == 1'b1) 
			begin 
				r = mr1;
			 	if(inf[23] == 1'b1) begin n = mr1n; z = mr1z; c = mr1c; v = mr1v; end
			end
			else begin r = r; end
		4'b1000:if(tmn1 == 1'b1)  
			begin 
				r = mn1;
			 	if(inf[23] == 1'b1) begin n = mn1n; z = mn1z; c = mn1c; v = mn1v; end
			end
			else begin r = r; end
		default: r = r;
		endcase
	end

end

endmodule




