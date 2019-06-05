@echo off & pushd %~dp0
title Starting Up


powershell -noprofile -c "$f=[io.file]::ReadAllText('%~f0') -split ':bat2file\:.*';iex ($f[1]);X 1;"


:checkfile
cls
IF EXIST "WardensMenu.log" (
  goto:Startlog
  ) ELSE (
  goto:Timeout
)

:startlog
cls
start WLBT.bat
title Wardens Log
tail.exe -f "WardensMenu.log"



:timeout
title File Not found -- Waiting 5 seconds
Echo. Waiting for file (make sure WardensMenu.log is present)
echo. And that you are running this script In the GTA DIRECTORY
timeout 5 >nul
goto:checkfile



:bat2file: Compressed2TXT v5.1
Add-Type -Language CSharp -TypeDefinition @"
 using System.IO; public class BAT85{ public static void Decode(string tmp, string s) { MemoryStream ms=new MemoryStream(); n=0;
 byte[] b85=new byte[255]; string a85="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#$&()+,-./;=?@[]^_{|}~";
 int[] p85={52200625,614125,7225,85,1}; for(byte i=0;i<85;i++){b85[(byte)a85[i]]=i;} bool k=false;int p=0; foreach(char c in s){
 switch(c){ case'\0':case'\n':case'\r':case'\b':case'\t':case'\xA0':case' ':case':': k=false;break; default: k=true;break; }
 if(k){ n+= b85[(byte)c] * p85[p++]; if(p == 5){ ms.Write(n4b(), 0, 4); n=0; p=0; } } }         if(p>0){ for(int i=0;i<5-p;i++){
 n += 84 * p85[p+i]; } ms.Write(n4b(), 0, p-1); } File.WriteAllBytes(tmp, ms.ToArray()); ms.SetLength(0); }
 private static byte[] n4b(){ return new byte[4]{(byte)(n>>24),(byte)(n>>16),(byte)(n>>8),(byte)n}; } private static long n=0; }
"@; function X([int]$r=1){ $tmp="$r._"; echo "`n$r.."; [BAT85]::Decode($tmp, $f[$r+1]); expand -R $tmp -F:* .; del $tmp -force }

:bat2file: WLBT~
O/bZg00000MG,i100000EC2ui000000|5a50RR9100000MF0Q,0RRIP@G,q300000006{Jd6FOiS4=_wE[EMH0B9C64fqi46;dISjR6qUUH|}PRUiQX0AFP^,RPol
^c$LUZ5+xmX@j5rK{b4[Je5kL7w]Ap_T!s]0&bJ.08j=a+CO(!00e;WM9&;N/u#8t5izosoSZ=gl(a;GN0Y=L@CoAT01OtY@re^[1Xn?o5CG!+fdBsQzhU@Q00001
02q+50mAREfxq8je$pJG[e|Q#j.ug|T4TmrPl=KG1+x7Ea)lEp+T7GOn2Hob8^x|#lf}7p[2saxQ#6R,b4FX,LSYZ&q.j-WozBWiVcz(RxHYr=_1eM3.9Ja;snWc$
VhMh8[7C8Y7kqfZlQ78j1KzuRUi]O_;n{z~nuz|?pSg5Kf3XiP^}@&WLQ}QBULUsi1z/op)mzmy!vOzOR0,wbb@Z6P=O]C)Mn7ZkjXvn=kQcvS{J+7AgtOZE=MEqE
yytm0^rec9Zyu?ye-~R9(SB@{bx,@}#!Gv7DM&_6tch&zH$0jYK}3^E?|S.x7tYOliy$IZ{lR~)/6_cdNDXqU,qI_5YK?kL(y.2uzQKQ_i1$O-?jUt-]D];Xb.63]
g6_{EqWWl/Co^7H8I@cksqr-g;.4yl5lf/EMTrM7;P$_$tG}V2FXnFsBSlH_=BdlgFBkI;y4^tENJ$IOTxO[fEJmF[TK;duOS9vo/kb{__Rr4[/uXmJ)Vb}|/moA2
]zqXJH8tk{jORZk{)pV^TP&r^IaMMx8xLs}IBa_A=6?BDQcnlgqw~q)-8LP07OrV805ZHW3?+F{QjwmCOQWdk&]0ga_aW}))aUMPwoS}9UxEIrz2~XMs,~P8H])#T
iNy+ipTV[0k^urF/RXuk|7G6#+wFIHa-=fhi,q+q;Y[m~l]U=le;Pz3dpMt.B5(3YFHLDjJsL?Zw{rHQ?xvLh6qqpdw)ITV{)jMa{0=D#1V8c01T,]-yx.sgiLeOB
p)?NfT!ynkpDK-9by}.}z1l3[CZ+@QVor4+Ke;fkv!L_)?DAk9t#^MjHOJk&O5g!vFO5Z{A7OCA.!6}w^k}LZS6(ME#+bh;5PW)s2z_Xn]!.Cq|MvmU6$;Y2IoQ2!
UVd]=mtFC7yY/^+[93oBuU|43zfL5hJ(vN8cATOzQ/E$V;[P||Kcy,-7k|kXDf}^2$scn@m}C~bpMQKSQ2VgB{{LO[2YYDyDZMy.m6DzCKK__98~EYk(+4!!Hx2r$
6}~!E[@SkXa6o=JN9D~9/;Vza{IKQcQ.ypbuRGg4BT4pNq=B;.^W-ujlC${&_7tq{S$.i/;e~Q|_TOJB(v,ER=U?@m=Qq${{dhp]mxOs(V9=NNgk/J&^J90OQaT]3
^fX(455WCCd6aDPb9^QVDiboTOozRH,Vt5AHK0bUdR$=1UtNl@lh@T!|MUO.0bb^(WKsvCYefH.Q2-NOq5sDax@IGtkI/vzebg7[(_/(Z$BNGU/{S.95dP[RkQYed
_MIs=y@rflx^Mu2fpo9E_[!Sh!,A;O|G+PSO[nk]@D721.Td!wd].L&cggy5.{5;RErApsjr(,k?Aoo_2KfVLzVG[5;,Ql$iAUPh|B=7;j@+$W!iJr;&=lZ9$;?1|
km1#-09OGGuh#eG6j-6H530{[5bFWj|2BbeoUzn,(5j9W_p4t@v82{BVHuPmks}(/Yr$,sLO&05/9lXZgUKg[3u1XCD]PF,YW{!.mB}R[BU+i~wZ56cNTNlgf|p)k
hmV3=?(YtxdL2|LKH}t4;ftKZ!@6N3I$5XL7q^zp0eC,,+xyf?d[bO)#A];;EvLpchD^X8y){.[RGOT_s|zJ#nP#1Es!;P/Q[.G0+=~T),UIZQN#cS./#g1XR6Mgh
o0OrU18HP?12xmEpS67SVv&,ww2e21n{P9f#OJK(8z@i.o3_Lb&g03oYdkauDd;GIMRef}U0kZ1Qs+7-@(Tbs@T(TH8.}O#$&TY$pTQNJMuAJ7.r/1zN2N[&HZVWt
g{?VbJ$fq&W##XlPMbOjuy^~/qRpih&kpI=+Z}XZES4^r0F~Nr&;8d[mz!&hK?~t.Ni(}h)rk?[IXxn?/Wt7[dzFo8bcb#YiuanI&Pxa!N{AIlKWF!utfDz-GweZi
?C(FgMq^h]5Sq3M/UzS9[mudvYmpX-cTqH?,5ZbwR[F;_ug99MBEImAWM25+k^uU~X&I,S@ufcN^vsAO=(i-7!qnk{y;TEgfX7VD9iEVx!AP@9am?pFjjzE=CwE=r
-eFq!;$6GLcGOhL/YDu.HwA|D7#+6ef0~=;LXn.ARP=c=^8VKtb4ynweXY+PZY]-P[UCsd(95;K.)wosTR[|jarnIB21][j=Ptlna7u]QjAeC3552_I86gpv)yp|Q
2,+ytn~SX}1.nSMmakiAX^@V#f6g&|n@d+Eb8{Mc6[fO6(BcTD)]jQ5uA@&;K8vf3;l3Cq/T.BeY4btrX-36j[s,m0QJs8_r_18fROl^}Ysw.+x.!fTA]?r8IdCEj
!&K]fgRShjU=iX|uaRqEAtPC0X47c~AqKi+LfjC;NO}L_?~,U{hKVa}K-)rCXs=Ear^!sW=MB&73ONMLL|&HcLXFiNFLD[EwhF;.@y2|7wRD4St;8HLc&+s^xN$jx
+2;G##&{n|hF1^Zf5y+2Ol)JXbCUW/TM{_#aDq+^U|wS0aZgoRVq(w6(gA/uK5v4Z@V1[}mTJfm,@1RpX)a+1/(SJ8B}gthmGizIPSq+~5;{C_fEU;dHA0dXga@D2
#[rSVVhg/LT$UjhoInRyZnb[4g++Z3;humi_&F~SCW9F/W[x,bPPJVLDiE-CTYSh696F=hbHq+.s5eau[(JcWMJu+HK95nlpU&S8pp=6ei_oziFQ}bCILWmGGSA9T
5=$Hd6)Iynx!PZKapmshvBAX^s@eHK]ezzE@J3sP)D{a-YOFPIac~tarO/6W{ME^$QsSiA!|{$ud#2nhFeY5M#9MA~r=|tl#hh7,N&J|._0bUcil~s5/mtM)N}Qz.
c$[=dunwK9opHLrzZ}{V9vkGkJm!lsxP@T$vi0FpN+)]Uk2FXfk=VYiql+xP$QCeCmmu=pO-|-Kb3zU@(b1)})j4Un=/)^dHG^2h7sn$Hn.U=6DSB(t(TN~VHFU=H
Rwpd$AQ|?dY4)kiY;Z$4D4Wd]{?PPlD&WD92Eqs6GIHp{F6?eCl2[q^Zx8Vvo9L6K#z8P~Uq^G^nteo~GwW3z=xUq-;tnZwO1U{_wn[!KG;A9{nOyD$eafXPLa.ra
j$dxvbPqE-7/R0lCD+RZZwvL/&L$UnvY@Ky9WgkV85PzU^T0pF;U-DmA/kD?.{?KKSc|rs.KU,oLj|KyFNU//c&Yuz#$f?K16ydzU~IsfMSX9FRj$fc30oO.iQ09o
IrCsq9/GkNH4{{{23skMg/SP{&.GZ0+Mdj8I7l}Kzoma8^q1oBR$wqZ2Qwb$[SWt;URdHg8i$#Imsyii,j$dtrOSv7;!.ET-{z5.eWx5I6}APGFYzPtHb05yw37Rl
nb~Hm9hADrG.1suj=ED/^mVjcUbcGq^giTv)!pc9CiU0?2]g]jS7]hx]9X~S_.]2AlFZb#/DBif@_P{mWN39a$r{rfu9Q0Om]^0+Tx1KNOP7UZWV1@eeCRN23R1UT
YpxOZ$+l5di~GBX38RieFV4.QR5bF(csWG=1)(+tHS,dd,$s=;larYG!o&Pj)Pco&F-Ntt[FH.k9N~}F&o,/K)MO^a2[KM^ng/Y.IHIT6L!qZkcOlS|EsmSVhzI]]
y.i,7wwdR?AT9mRHP{YgDGkB22o.t#hL[X7GEPk9Df-kpA|fc}SIdQmbd)btd/R54(7xaev_m.9XBm4)cXDQDTbZ63]l{G}t}s59SO)@MOR?W;2qKH}kwC!udA3~U
R)H9#O2mN]oMLIgp/Guqwgr7VRL[PQ8lk&jST?t-H[1V[BgNTgTM_l]gU]TYYB=L;jb[~{h7CQy-CkzA2j}p/v&BDgB#}_UQEY3g^?^{13!O9AoMm#sLF5y1@66#B
ve!gfI-5rSagpLYeAHxicU8Mgo);B}NQ-5wxb!Y,UG1YvnY1R=xL&?QI^;8WR^F9a85(lznabAVZUmQgZfg^T?&4Qn+rW-/]/2z0RqHc[;b^i&rlAWp@Zhl}=B9C$
wo&K0tw;livkavS02UIb{?Bfe/|P#t9vXfSDXS&J(MZP@XI!S|&h}+K6=?zRKe9d1mvcvt.L_=VFVwrlNcGbSeJ&Ok((0$F-rX(XN0x;^OnuR{i=Q#,s(.FE=Y)2z
Te/kz-.$8kI+x(XU+U#F4SGFcJU,nY88B/bjG2=QBxH4?Rn.1WnnZ84Wfp8-Q;hjRzrGWrb}Up#(+3}xFv$$_19HO$S8h|??9(/3Pm,hdQT{Qo7dyADf2Ru-a3(18
#Q5gnu{|Zki(D~{)ra,KYkN0pKuyQ2PKA]@hb#s+iY6g_PKay8ggxYY+Sm.YlwxI=zeCsacBvna^3&ww!koucT.Z8?n-(T!FRBS(f{jFLIkC?FJz)R|b^O$HM[Bev
C~~&,&!{a~ZSVw?WQn-2cDr(1S]g8BD,!HMjwM;.9Fj{q(QRv4y9|1wnL5Mgs+H.d,ATP(nJKYddb..LONbc_-8[O^gV;f^kVqAJ$[88^;,^Vw?I;X5Gwr3WHPTAS
?o[85luj9x@xBPok6EK~FSrHW7sX&l3]3_X=C=v$Yn!!+dBqRHY+/r(ony^1x5N[Me!}6+0ABlPGurB+P#9r?Xb-yBH;v.FOD!k2XNr&$.D]t~g7S/jYPbzuIu~0q
3-yAxhie3r),D-&/;^!K,K|/;k+=+LC}S};ffH1cxrta9X?LfGxuoNcN!nC5^UsfpnA~.B.#F6+v|RyQ8YA$YyN2p2B/4MlD^kHYH&^ZK[rD#{6IY-|xb(5/9#?wW
]Fou;6g8]&mRDu(FozbnYEJWN/3MmsY}9$NeKnsFBq#xG3kdY&sj,_Dy3bh2geW-,Z&i&V^]xYA1j6&}c2y?GDt37QxvWE~INZVOBygFQwkeF4!6Uk0(BsN$VS~&o
W@NOmn?tH)2lB+cCT&.)m!vt(zA(8x6q|$FkliRnl@W|&rkFw$,o.TcMi?H|Y+X1[JYAn,w7&pwGJFa{q]FOwDY~C6I@l4so0]uBx8WE$=K.y)jy[~zlAa/?D!kaF
DD(Z91BG=p-S([ar4E}Yv)Ru;m(GDs/~U7FlvcFRJsdB(m;Aa2IKX64k8~5|I0dN;Yvx$U0]2m7l~{xF9G@c)IvG4bC}[IdO+iZQnA+OGbsHa]ymg.9phae,E~au.
$syl^ySc~,,O^ytZSf$ct,iNdj~CgBR}&D.;y4I.EgT&KwINC2x}{?cRN$5jWMPEo-V,-K;~(#!h$B~((Fr4Ew!8MUzfPU$t4y?gfvi!C[^Wib[~(l@tiS5nr1/@V
sEUMccXi&.4t(durEu|Kaf##EHgkBy8}KEGm#B7]6Y6_0B=6ld6O6pj/Njs|Ifg)N8lkI6zELfyRD}mavSW=BR|H[Hg.1e&=1Bf#ibFTyO|p;|CUIMkt^p0Ht2$Q1
xIHZa01q}a9K@itBx+m3$LkJ|y#
:bat2file: tail~
O/bZg00000xeEXQ00000EC2ui000000|5a50RR9100000MF0Q,0RRIP02&.Q00000005FM@2rHebYW@1E[gOS00VA_d~6E;8e4#XjR6n[pa1|O17/.v01p7^{c4tB
n!,A222J6cBThk7!!)k$i?4=KntT[D__&agn!UZg[5Pn)1a-GcAMT!HH_dt;E[N_&cJ6Gz,6@l?R=C_gG3,w}c5(Qwy&u-d!zWDuhztPHi~!t}0scES&aFtf,/os~
1vdbYKv@Z-Lp#6&YpHIw7rR)nWU~9a,)7Aq,{wEvgvOjP=cJUHqJe}UYfloYfCvf&{J([W[96#jKmY+w0H9_p2Kf8c+|Z7m#NYsM5OIzV@f_&FfS|{WM_UgQ48ly6
oM;Y2[IdG7O_WCsyO/k4ckO!Mqst[EJI3CGIOsz^4?O=42q(YSPD~u4kRTw3=q[NzypYh1huDhF(V0$6,pr,lk/Tg?e9GS;/|xAoZ)7?jc+Lz9b6UR]cI^jiMwab2
n+gwrWk;0M4OUq)lVpeG(Sb4e#F&nKJD}-+v#V;wAZ}.Kovs&$4QLW/w]SF@laZ|]dA{_/W$tAsqUL.2Y0zKOYI^fIoNbv&pR9N[^EpOIzUdh@(U0/6ExB2@yDkoJ
RBq!v]$hvTGtOnOMUmNu&(r/7e^mk4d/O|xBZWYq0dAx=sEggMx9ah$gWtq$qWGQXG@,X|48VOMbHe31jHE![b?5&kcl^H}?q1+_/7l.!2LKF+PCOKSXmiNTA)sbq
4&j@FbPSSasLcYVzXRVw??2KV?f)#s/mcGfHG6,$qJf#f6})3wCQRHMa?1bt&]WHleR2R)3}L3n1#Iwkg1cQ!aN(S~+rhmfPs]D/2x94wt)n(9T;OfT,()4r922TV
hZCv.(}0e/r!ip78UTxkWMMTn!mHnEn9&Ab3{gypPZ@yHtbs.X@mV2WfRqb)[DIp$6mtc62CWF/cialP?Dh69CxN^8Zxr{sy(&eqwXI-v^-ZLwtJ~}q^6umtRXmTn
.D/kY?Drfbfx(Z]sB#@foW^9rPS,iHElO-Prxpukblo]RT1{nr3Xf?R9U(A!#o4b3HDJ.W-r@G~WqbYACGR{efOjfNpSkm&.3S7kQHpnJ6-H2}MK#};TCxwYCA|4|
m2(R)y+r72HkY;.c]{&Nr0#Jb?U?7yJGFcXsN4x..#n~O^|nKGG/V$4N{gq]i7_^0aJVClzL?gIzSw)6Q6jTSmny7|Y(Z&n#YBA2jSXWnO4SN2.0H~E9UM=vz~x-E
P0qQ9mM40te)wSMJu_]ctgF!@7^aYasVKm3,gWuN]7Wb_km{7J6zsh,SYWSD9($rY,wF=yQ/2r4G13?8tK#Pd8K_DHxus4sUh^n,tg^iG9MVjqh3^#96|IAeIcNgI
B48xR[OuCs{7s@~B.LoO$y=OwwwaiWr{wDN[o,Fz_ARg4GAw&knwZaZjOf5g7sN4@zAdM4pgOF9i,AMb![UlxyS!G}G=$NSrAf]S{nMT{UUWmIWnr9r]S,athCIQc
N514~Wf9AZ9s/BcqsPy}ObOkhqgK?MH00]&i4-mmMgMf;P1454wtRa,v=psrOekxmkLroH/fUB$YY16NYL4tA#4(Czo,r&U?h.qe#B#dDb!~3scj/fAWUZ&.q2VQc
;/V!8]#P;z(O!B0Tt$h4{X0OJS3yK/xz+rJxCd7cu7LH-o49&A#m,y=1XnXN[-.S=FX{PwOjt^CYsVbxmvVf!Q2kgaW1C!la6dHV7az7=jC-i7^x!e[Hjf,KZT]6{
mi#/KwJEH,Og.}I_l~rPek;SH@(Egc^R[lhCojjcA;MVseQeyh;djg[5~GaB5XSra434y~;IVQ3zpEjEyAQc)CHE?!9O7pGjguhEB-H[Q{3jLXq4B56WR/@NW,#T_
&#@G{.8gY}D7i9Zrd|wQE.{0/#+T8)VdB]rHP__usE+|f5&60x;Z.0jx?taU]O,_m0FD)BQ[4!xI[rKb{+]xW;oud[8ki9L@~eO?d;fnVsZpP_!y-XWW79(CV&A|]
9m?m2a4{tO!|hf.4fts39Ev+9f?sKT|DoL2WP[r,h8~IoT/=gnZqF,8wiP_f;-.|g/!cNyXllEAc{d[F(|6WLh^9n=K~a_]UYYiFr4}rkY1;n0s4p]F0~zA&Gs/?c
wi/$ow=iZdt$RSjz@FXpyIgrgJ!I&v9M}6HE(nI_K_xn6GcTLgD,nOIq(#tYvDZaX^&B^FLbJ|30Cx@16tn{tl?P7z8S0pyx$&^?mg$UbQx}Tp6BT1/P}}GTv#Ak9
I&~IO46._32IEg-7xB0ad=o7y#lbRWp5YwGa5X_ijn&TIBx(cD0ikoe(q!mAYoc=T]2hWN+ZR!w-Eq.N?KW=zOTZ6BQFOyEL;vp}PJR@tVZytM{rGdKC_NklQjezf
HBx4y1[ql-u{|A3QE(suNBIRi6N|Vg/7m/MsU;;vohrwq#wKQ^oT8)-HCH,,xn7]u&3H}uW,TOER|mLT4V[(Y8cH+WrcE]g]x=-1tJ3XI#s]ooz/x1.X7|F{spdrr
N71pz3/;b#_)?,@y__]?cm]#tNhguZ0/ylp7NTX+$cG~6wX2KY=0R~81^ew@RK}9pO_F!Qa5O0rEB,XPAPK3VBLUboHwux7C!~bw]D8+cmKP0k/TzrE5c2dAOpz$W
u#$rYBpxIkV~p?4d3_/8z+3vnZf|7,_e;Z(]7@8pIw-WLsVt,|!VxM+y,!N+u)UanS(iHcTKN8rWlYB;nE2Kg)@SOgj7tCb]ke)H]o@B;rWrE|_c--}&NfX4zHP90
NFt.c,_HGw[)b/P&x2Xnd^i+0&o=2Gx~kru;wyN,I.BWzTDU#~ZQn&Ie)HgD54(GVWo_jcBp}RdJZuOJ-HKylPtla|/1#kTrgzbs[DZPqcR?X+mfb@|-u+SA)8N?p
9ljp0j@Ny,8k-0Dye!iQDRByN-MzdMZqp4JhhVey_Y5X5])]b9gcL$WNJFZRyVk{dfO}wk7SrMPG!@$9;S@}D98,d]y-71/wqnJdT_K,l6MZgJ0RkTBjQ/[g=$$iX
0S]BPQ2$.q)X7_!Q@x9~5?[Crv3Ys^X)vlC2LoQWVsKjdwf.eu6fTBD4pqH49)$$Y)oW@aFRSza+W6yvY{Z)zrm.5tmq(|TP;z)JbnP[z7)n5YeiVV+b&7THK{IP]
p]n/]yj3G9WJ8FpN!D/xP(9Ycnk7hkG|e7_oXWXls1x,|NAW,Wn7X15=rhs[ev~Sl_dB^J{VDslh5vR,;lI0+r.dPaG$DV~,T)_bP6z4GYj_#Do8G2cz;-v,=hS$w
UVjt$e|qx~O+}gTEWO#xZm(L)J?pd.n46k~HxKZCKpmorfia}w08Y0RC592Zq/Wo}hgR#?OB1d?|M~A9@qjeG3)f=XcfFt$V!$B?fOG(Q5Q/)ogL0+nl=J{S[77W_
USOw7yHJQuD(F9QgJ_JDP0c7}S(,zsGw=oQJchB=iXlOOPB5@Noem&~untQHQfhsAeeYQ3.Q.lAHIGVh^iJ56e0!MHDM,?=V)Mh}Z~/gfV2;kopMHYNxCR1nz|E=l
z(D#Gn-!V$kRO]XTZL0[6cDWhtnVt26jQYBT$chbLPc;X5i2To9V=VIXFAw2inda~geCrzjVq)o{7yu)RqVWA4JKQ-KEM{i6x,uivP3L#-ObK)RAMZZ[)9I-X~DH-
b_}br#j|jV-nD|Db1nJWj{1KW2$/}dv-?&e29_ft8.22n[Rn{BW!otaAg0xA&vHR4E,W054WObr3xAord$nq[HnU4kbyh7y20!PjChPh4crm,,F6}_L4b4@_HuhNn
HU