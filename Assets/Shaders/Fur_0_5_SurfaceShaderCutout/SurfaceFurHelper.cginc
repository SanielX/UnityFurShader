
       

        sampler2D _MainTex, _FurTex, _FurMask;

        struct Input
        {
            float2 uv_MainTex;
        };

        float4 _ForceGlobal;
        float4 _ForceLocal;
        half _Glossiness, _FurLength, _FurThinness;
        half _Metallic, _FurDensity;
        fixed4 _Color;

        void vert(inout appdata_base data, out Input o) {
            UNITY_INITIALIZE_OUTPUT(Input, o);
            float3 P = data.vertex.xyz + data.normal * _FurLength * FURSTEP;
            P += clamp(mul(unity_WorldToObject, _ForceGlobal).xyz + _ForceLocal.xyz, -1, 1) * pow(FURSTEP, 3) * _FurLength;
            data.vertex = float4(P, 1);
        }
        
        void surf (Input IN, inout SurfaceOutput o)
        {
            half lenghtFromTex = tex2D(_FurMask, IN.uv_MainTex).r;
            fixed3 noise = tex2D(_FurTex, IN.uv_MainTex * _FurThinness).rgb;
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
            
            float cutoff = clamp(noise * lenghtFromTex - (FURSTEP * FURSTEP * _FurDensity), 0, 1);
          //  cutoff = cutoff < _Cutoff? 1 : 0;

            o.Albedo = c;
            o.Alpha = cutoff;
        }
