// Uniforms

// Varyings
varying vec3 vColor;

// Includes

void main()
{
    gl_FragColor = vec4(1., 1., 1., 1.);

    float distanceToCenter = length(gl_PointCoord - 0.5);
    if(distanceToCenter > 0.5) discard;

    gl_FragColor = vec4(vColor, 1.0);

    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}