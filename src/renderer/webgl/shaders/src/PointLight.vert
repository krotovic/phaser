#define SHADER_NAME PHASER_POINTLIGHT_VS

precision mediump float;

uniform mat4 uProjectionMatrix;

attribute vec2 inPosition;
attribute vec2 inLightPosition;
attribute vec4 inLightColor;
attribute float inLightRadius;
attribute float inLightFalloff;
attribute float inLightAttenuation;

varying vec4 lightPosition;
varying vec4 lightColor;
varying float lightRadius;
varying float lightFalloff;
varying float lightAttenuation;

void main ()
{
    lightColor = inLightColor;
    lightRadius = inLightRadius;
    lightFalloff = inLightFalloff;
    lightAttenuation = inLightAttenuation;
    lightPosition = uProjectionMatrix * vec4(inLightPosition, 1.0, 1.0);

    gl_Position = uProjectionMatrix * vec4(inPosition, 1.0, 1.0);
}
