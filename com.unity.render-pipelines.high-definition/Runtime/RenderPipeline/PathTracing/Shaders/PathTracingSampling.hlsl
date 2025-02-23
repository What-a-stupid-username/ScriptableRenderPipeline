#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingSampling.hlsl"

float GetSample(uint2 coord, uint index, uint dim)
{
    // If we go past the stored number of samples per dim, just pick another pair of dimensions
    dim += (index / 256) * 2;

    return GetBNDSequenceSample(coord, index, dim);
}
