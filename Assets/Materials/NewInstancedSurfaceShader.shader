// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4539,x:33191,y:32745,varname:node_4539,prsc:2|diff-6420-RGB,spec-5342-OUT,gloss-3868-OUT,normal-7725-RGB;n:type:ShaderForge.SFN_Rotator,id:1181,x:32374,y:32808,varname:node_1181,prsc:2|UVIN-5999-UVOUT,PIV-1697-OUT,SPD-6717-OUT;n:type:ShaderForge.SFN_Tex2d,id:6420,x:32452,y:32587,ptovrint:False,ptlb:Diff,ptin:_Diff,varname:node_6420,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:76d5b768a4f60cb42a8f5442cf6d1023,ntxv:2,isnm:False|UVIN-1181-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5999,x:32062,y:32818,varname:node_5999,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector2,id:1697,x:32084,y:32978,varname:node_1697,prsc:2,v1:-2,v2:2;n:type:ShaderForge.SFN_ValueProperty,id:6717,x:32005,y:33115,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_6717,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Tex2d,id:5535,x:32661,y:32768,ptovrint:False,ptlb:spec,ptin:_spec,varname:node_5535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:07cbbdcf4e8ad2747a3ce097e4130055,ntxv:2,isnm:False|UVIN-1181-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7725,x:32490,y:33142,ptovrint:False,ptlb:Norm,ptin:_Norm,varname:node_7725,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e69934f8a3ee6e040aa47b9a41554b27,ntxv:3,isnm:True|UVIN-1181-UVOUT;n:type:ShaderForge.SFN_Fresnel,id:776,x:32360,y:33021,varname:node_776,prsc:2|EXP-5293-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5293,x:32195,y:33151,ptovrint:False,ptlb:Frenel,ptin:_Frenel,varname:node_5293,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Blend,id:5342,x:32852,y:32752,varname:node_5342,prsc:2,blmd:10,clmp:True|SRC-5535-RGB,DST-776-OUT;n:type:ShaderForge.SFN_Slider,id:3868,x:32743,y:33000,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_3868,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2136752,max:1;proporder:6420-6717-5535-7725-5293-3868;pass:END;sub:END;*/

Shader "Instanced/NewInstancedSurfaceShader" {
    Properties {
        _Diff ("Diff", 2D) = "black" {}
        _Speed ("Speed", Float ) = 0.05
        _spec ("spec", 2D) = "black" {}
        _Norm ("Norm", 2D) = "bump" {}
        _Frenel ("Frenel", Float ) = 0.5
        _gloss ("gloss", Range(0, 1)) = 0.2136752
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diff; uniform float4 _Diff_ST;
            uniform float _Speed;
            uniform sampler2D _spec; uniform float4 _spec_ST;
            uniform sampler2D _Norm; uniform float4 _Norm_ST;
            uniform float _Frenel;
            uniform float _gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7982 = _Time + _TimeEditor;
                float node_1181_ang = node_7982.g;
                float node_1181_spd = _Speed;
                float node_1181_cos = cos(node_1181_spd*node_1181_ang);
                float node_1181_sin = sin(node_1181_spd*node_1181_ang);
                float2 node_1181_piv = float2(-2,2);
                float2 node_1181 = (mul(i.uv0-node_1181_piv,float2x2( node_1181_cos, -node_1181_sin, node_1181_sin, node_1181_cos))+node_1181_piv);
                float3 _Norm_var = UnpackNormal(tex2D(_Norm,TRANSFORM_TEX(node_1181, _Norm)));
                float3 normalLocal = _Norm_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _spec_var = tex2D(_spec,TRANSFORM_TEX(node_1181, _spec));
                float3 specularColor = saturate(( pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenel) > 0.5 ? (1.0-(1.0-2.0*(pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenel)-0.5))*(1.0-_spec_var.rgb)) : (2.0*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenel)*_spec_var.rgb) ));
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Diff_var = tex2D(_Diff,TRANSFORM_TEX(node_1181, _Diff));
                float3 diffuseColor = _Diff_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diff; uniform float4 _Diff_ST;
            uniform float _Speed;
            uniform sampler2D _spec; uniform float4 _spec_ST;
            uniform sampler2D _Norm; uniform float4 _Norm_ST;
            uniform float _Frenel;
            uniform float _gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3122 = _Time + _TimeEditor;
                float node_1181_ang = node_3122.g;
                float node_1181_spd = _Speed;
                float node_1181_cos = cos(node_1181_spd*node_1181_ang);
                float node_1181_sin = sin(node_1181_spd*node_1181_ang);
                float2 node_1181_piv = float2(-2,2);
                float2 node_1181 = (mul(i.uv0-node_1181_piv,float2x2( node_1181_cos, -node_1181_sin, node_1181_sin, node_1181_cos))+node_1181_piv);
                float3 _Norm_var = UnpackNormal(tex2D(_Norm,TRANSFORM_TEX(node_1181, _Norm)));
                float3 normalLocal = _Norm_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _spec_var = tex2D(_spec,TRANSFORM_TEX(node_1181, _spec));
                float3 specularColor = saturate(( pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenel) > 0.5 ? (1.0-(1.0-2.0*(pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenel)-0.5))*(1.0-_spec_var.rgb)) : (2.0*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Frenel)*_spec_var.rgb) ));
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Diff_var = tex2D(_Diff,TRANSFORM_TEX(node_1181, _Diff));
                float3 diffuseColor = _Diff_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
