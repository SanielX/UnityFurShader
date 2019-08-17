Shader "Fur/FurRimColorShader"
{
    Properties
    {
		[Header(Main properties)]
        _Color ("Color", Color) = (1, 1, 1, 1)
        _Specular ("Specular", Color) = (1, 1, 1, 1)
        _Shininess ("Shininess", Range(0.01, 256.0)) = 8.0
        
        _MainTex ("Texture", 2D) = "white" { }
        _FurTex ("Fur Pattern", 2D) = "white" { }
		_FurMask("Fur Mask", 2D) = "white" {}
		[Space]
		[Header(Surface under fur properties)]
		_SurfaceNormal("Surface Normalmap", 2D) = "white"{}
		_SurfaceRoughness("Roughness map", 2D) = "white" {}
		_SurfaceAmbient("Occlusion Map", 2D) = "white" {}
		_Glossiness("Glossiness", Range(0,1)) = 1
		[Space]
		[Header(Fur properties)]
		_FurLength("Fur Length", Range(0.0, 1)) = 0.5
		_FurDensity("Fur Density", Range(0, 2)) = 0.11
		_FurThinness("Fur Thinness", Range(0.01, 10)) = 1
		_FurShading("Fur Shading", Range(0.0, 1)) = 0.25

		_ForceGlobal("Force Global", Vector) = (0, 0, 0, 0)
		_ForceLocal("Force Local", Vector) = (0, 0, 0, 0)

		_RimColor("Rim Color", Color) = (0, 0, 0, 1)
		_RimPower("Rim Power", Range(0.0, 8.0)) = 6.0
	}

		Category
		{
			SubShader
			{
				Tags{ "RenderType" = "Transparent" "IgnoreProjector" = "True" "Queue" = "Transparent" }
				Cull Off
				ZWrite On

			Blend SrcAlpha OneMinusSrcAlpha

			LOD 200
			CGPROGRAM

#pragma surface surf Standard fullforwardshadows

				// Use shader model 3.0 target, to get nicer looking lighting
#pragma target 3.0

			sampler2D _MainTex, _SurfaceNormal, _SurfaceAmbient, _SurfaceRoughness;

			struct Input
			{
				float2 uv_MainTex, uv_SurfaceNormal, uv_SurfaceAmbient, uv_SurfaceRoughness;
			};

		half _Glossiness;

		fixed4 _Color;

			void surf(Input IN, inout SurfaceOutputStandard o)
			{
				fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
				o.Albedo = c.rgb;
				o.Normal = UnpackNormal(tex2D(_SurfaceNormal, IN.uv_SurfaceNormal));
				o.Occlusion = tex2D(_SurfaceAmbient, IN.uv_SurfaceAmbient);
				o.Smoothness = tex2D(_SurfaceRoughness, IN.uv_SurfaceRoughness).r * _Glossiness;
				o.Alpha = c.a;
			}
			ENDCG



            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.05
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.10
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.15
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.20
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.25
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.30
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.35
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.40
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.45
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.50
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.55
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.60
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.65
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.70
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.75
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.80
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.85
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.90
                #include "FurHelper.cginc"
                
                ENDCG
                
            }
            
            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 0.95
                #include "FurHelper.cginc"
                
                ENDCG
                
            }

            Pass
            {
                CGPROGRAM
				#pragma multi_compile_fog
                #pragma vertex vert_base
                #pragma fragment frag_base
                #define FURSTEP 1.00
                #include "FurHelper.cginc"
                
                ENDCG
                
            }

		/*	Pass
			{
				CGPROGRAM
				#pragma multi_compile_fog
				#include "UnityCG.cginc"
				#pragma vertex vert
				#pragma fragment frag

			struct v2f
			{
				float4 pos: SV_POSITION;
				half2 uv: TEXCOORD0;
				UNITY_FOG_COORDS(1)
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

			v2f vert(appdata_base v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);

				UNITY_TRANSFER_FOG(o, o.pos);
				return o;
			}

			fixed4 frag(v2f i) : COLOR
			{
				fixed4 color = tex2D(_MainTex, i.uv);
				UNITY_APPLY_FOG(i.fogCoord, color);
				return color;
			}
				ENDCG
			}*/
        }
    }
}