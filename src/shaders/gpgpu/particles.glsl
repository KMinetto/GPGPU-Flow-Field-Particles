// Uniforms

// Varyings

// Includes

void main()
{
    vec2 uv = gl_FragCoord.xy / resolution.xy;
    vec4 particle = texture(uParticles, uv);
    particle.y += 0.01;
    gl_FragColor = particle;
}
