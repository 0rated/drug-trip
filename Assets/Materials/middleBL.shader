// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9054,x:33283,y:32616,varname:node_9054,prsc:2|diff-2361-OUT,normal-8729-RGB,emission-2893-OUT,clip-6572-R,olwid-3359-OUT,olcol-844-OUT;n:type:ShaderForge.SFN_Tex2d,id:4144,x:32112,y:32673,ptovrint:False,ptlb:Tex,ptin:_Tex,varname:node_4144,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b3b5fa983756442488464f1aedcd443c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:3359,x:32135,y:33121,ptovrint:False,ptlb:outline width,ptin:_outlinewidth,varname:node_3359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.15;n:type:ShaderForge.SFN_Multiply,id:616,x:32351,y:32627,varname:node_616,prsc:2|A-4144-RGB,B-513-OUT;n:type:ShaderForge.SFN_ValueProperty,id:513,x:32112,y:32868,ptovrint:False,ptlb:Contrast,ptin:_Contrast,varname:node_513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.2;n:type:ShaderForge.SFN_Multiply,id:2893,x:32859,y:32630,varname:node_2893,prsc:2|A-2361-OUT,B-5536-OUT;n:type:ShaderForge.SFN_Slider,id:5536,x:32437,y:32807,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_5536,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.282051,max:3;n:type:ShaderForge.SFN_Tex2d,id:8729,x:32677,y:33138,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_8729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6572,x:32730,y:32899,ptovrint:False,ptlb:node_6572,ptin:_node_6572,varname:node_6572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3b5b7be0f2332c24f89a2af018daa62d,ntxv:3,isnm:False|UVIN-7936-UVOUT;n:type:ShaderForge.SFN_Panner,id:7936,x:32493,y:32940,varname:node_7936,prsc:2,spu:0.05,spv:0.01|UVIN-4710-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4710,x:31790,y:32838,varname:node_4710,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:3570,x:32365,y:32406,ptovrint:False,ptlb:node_3570,ptin:_node_3570,varname:node_3570,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2279412,c2:0.9361054,c3:1,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:2361,x:32654,y:32480,ptovrint:False,ptlb:COl/Tex,ptin:_COlTex,varname:node_2361,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3570-RGB,B-616-OUT;n:type:ShaderForge.SFN_Blend,id:844,x:33090,y:32983,varname:node_844,prsc:2,blmd:2,clmp:True|SRC-2893-OUT,DST-9625-OUT;n:type:ShaderForge.SFN_Vector3,id:9625,x:32935,y:33206,varname:node_9625,prsc:2,v1:0.65,v2:0.65,v3:0.65;proporder:3359-4144-513-5536-8729-6572-3570-2361;pass:END;sub:END;*/

Shader "Custom/middleBL" {
    Properties {
        _outlinewidth ("outline width", Float ) = 0.15
        _Tex ("Tex", 2D) = "white" {}
        _Contrast ("Contrast", Float ) = 1.2
        _EmissionIntensity ("Emission Intensity", Range(0, 3)) = 2.282051
        _Normal ("Normal", 2D) = "bump" {}
        _node_6572 ("node_6572", 2D) = "bump" {}
        _node_3570 ("node_3570", Color) = (0.2279412,0.9361054,1,1)
        [MaterialToggle] _COlTex ("COl/Tex", Float ) = 0.2279412
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Tex; uniform float4 _Tex_ST;
            uniform float _outlinewidth;
            uniform float _Contrast;
            uniform float _EmissionIntensity;
            uniform sampler2D _node_6572; uniform float4 _node_6572_ST;
            uniform float4 _node_3570;
            uniform fixed _COlTex;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_outlinewidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_3854 = _Time + _TimeEditor;
                float2 node_7936 = (i.uv0+node_3854.g*float2(0.05,0.01));
                float4 _node_6572_var = tex2D(_node_6572,TRANSFORM_TEX(node_7936, _node_6572));
                clip(_node_6572_var.r - 0.5);
                float4 _Tex_var = tex2D(_Tex,TRANSFORM_TEX(i.uv0, _Tex));
                float3 _COlTex_var = lerp( _node_3570.rgb, (_Tex_var.rgb*_Contrast), _COlTex );
                float3 node_2893 = (_COlTex_var*_EmissionIntensity);
                return fixed4(saturate((1.0-((1.0-float3(0.65,0.65,0.65))/node_2893))),0);
            }
            ENDCG
        }
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
            uniform sampler2D _Tex; uniform float4 _Tex_ST;
            uniform float _Contrast;
            uniform float _EmissionIntensity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _node_6572; uniform float4 _node_6572_ST;
            uniform float4 _node_3570;
            uniform fixed _COlTex;
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
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 node_2488 = _Time + _TimeEditor;
                float2 node_7936 = (i.uv0+node_2488.g*float2(0.05,0.01));
                float4 _node_6572_var = tex2D(_node_6572,TRANSFORM_TEX(node_7936, _node_6572));
                clip(_node_6572_var.r - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Tex_var = tex2D(_Tex,TRANSFORM_TEX(i.uv0, _Tex));
                float3 _COlTex_var = lerp( _node_3570.rgb, (_Tex_var.rgb*_Contrast), _COlTex );
                float3 diffuseColor = _COlTex_var;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 node_2893 = (_COlTex_var*_EmissionIntensity);
                float3 emissive = node_2893;
/// Final Color:
                float3 finalColor = diffuse + emissive;
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
            uniform sampler2D _Tex; uniform float4 _Tex_ST;
            uniform float _Contrast;
            uniform float _EmissionIntensity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _node_6572; uniform float4 _node_6572_ST;
            uniform float4 _node_3570;
            uniform fixed _COlTex;
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
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 node_7600 = _Time + _TimeEditor;
                float2 node_7936 = (i.uv0+node_7600.g*float2(0.05,0.01));
                float4 _node_6572_var = tex2D(_node_6572,TRANSFORM_TEX(node_7936, _node_6572));
                clip(_node_6572_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Tex_var = tex2D(_Tex,TRANSFORM_TEX(i.uv0, _Tex));
                float3 _COlTex_var = lerp( _node_3570.rgb, (_Tex_var.rgb*_Contrast), _COlTex );
                float3 diffuseColor = _COlTex_var;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_6572; uniform float4 _node_6572_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_2323 = _Time + _TimeEditor;
                float2 node_7936 = (i.uv0+node_2323.g*float2(0.05,0.01));
                float4 _node_6572_var = tex2D(_node_6572,TRANSFORM_TEX(node_7936, _node_6572));
                clip(_node_6572_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
