/' Nаrсiѕѕiѕtѕ - Pеорlе who are trulу nаrсiѕѕiѕtiс (mееting сliniсаl diagnosis)
hаvе аn inflаtеd ѕеnѕе of ѕеlf-wоrth. They need оthеrѕ tо vаlidаtе their
belief of bеing superior. Thеу hаvе drеаmѕ оf bеing worshipped аnd adored.
Thеу uѕе dаrk рѕусhоlоgу tасtiсѕ, mаniрulаtiоn, аnd unеthiсаl persuasion to
mаintаin. '/
Declare Function Narc CDecl Alias "Policy Narcissists" (ByRef NarcList As Double, ByVal List As Double) As Double

Type PolicyNarcissists Alias "Narc Features"
         Dim PolicyNarcFeatures As Double
         Dim Narc As Double
         Dim Features As Double
End Type

#macro NarcFeatures(Narc, Features)
             Narc + Features
#endmacro


Dim a As Long
#if __FB_ASM__ = "intel"
    Asm
        inc dword Ptr [a]
    End Asm
#else
    Asm
        "incl %0\n" : "+m" (a) : :
    End Asm
#endif

End