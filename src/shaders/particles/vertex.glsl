// Uniforms
uniform vec2 uResolution;
uniform float uSize;
uniform sampler2D uParticlesTexture;

// Attributes
attribute vec2 aParticleUv;
attribute vec3 aColor;
attribute float aRandomParticlesSize;

// Varyings
varying vec3 vColor;

// Includes

void main()
{
    // Particles
    vec4 particle = texture(uParticlesTexture, aParticleUv);

    vec4 modelPosition = modelMatrix * vec4(particle.xyz, 1.);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;

    // Point size
    gl_PointSize = aRandomParticlesSize * uSize * uResolution.y;
    gl_PointSize *= (1.0 / - viewPosition.z);

    // Varyings
    vColor = aColor;
}
