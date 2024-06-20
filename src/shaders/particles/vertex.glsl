// Uniforms
uniform vec2 uResolution;
uniform float uSize;

// Attribbutes

// Varyings
varying vec3 vColor;

// Includes

void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;

    // Point size
    gl_PointSize = uSize * uResolution.y;
    gl_PointSize *= (1.0 / - viewPosition.z);

    // Varyings
    vColor = vec3(1.0);
}