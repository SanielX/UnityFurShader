Shader "Custom/FurShaderSurface"
{
    Properties
    {
        _Color("Color", Color) = (1,1,1,1)
        _MainTex("Albedo (RGB)", 2D) = "white" {}
        _FurTex("Fur Pattern", 2D) = "white" { }
        _FurMask("Fur Mask", 2D) = "white" {}
        _FurLength("Fur Length", Range(0, 5)) = 1
        _ForceGlobal("Force Global", Vector) = (1,1,1,1)
        _ForceLocal("Force Local", Vector) = (1,1,1,1)
        _FurThinness("Fur Thinnes", float) = 0.1
        _FurDensity("Fur Density", Range(-1, 1)) = 0.5
        _Cutoff ("Cutoff", Range(0,1)) = 0.5
    }
    SubShader
    {
        Tags { "RenderType" = "Opaque" }

        CGPROGRAM
        #define FURSTEP 0.1
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff 
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.2
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG
        CGPROGRAM
        #define FURSTEP 0.3
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG
        CGPROGRAM
        #define FURSTEP 0.4
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.5
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG
        CGPROGRAM
        #define FURSTEP 0.55
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.6
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.65
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.7
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.75
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.8
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.85
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.9
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG

        CGPROGRAM
        #define FURSTEP 0.95
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG
        
        #define FURSTEP 1
        #pragma surface surf Lambert fullforwardshadows vertex:vert alphatest:_Cutoff
        #pragma target 3.0
        #include "SurfaceFurHelper.cginc"
        ENDCG
    }
    FallBack "Diffuse"
}
