﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Microsoft.Xna.Framework.Graphics;

namespace MonoScene.Graphics.Content
{
    /// <summary>
    /// Represents a sequence of indices, and can be used to create <see cref="IndexBuffer"/> resources.
    /// </summary>
    public class IndexBufferContent
    {
        #region Data

        private uint[] _Indices;

        #endregion

        #region API       
        
        public (int Offset, int Count) AddTriangleIndices(IEnumerable<(int A, int B, int C)> triangleIndices)
        {
            IEnumerable<int> _split((int C, int B, int A) tri)
            {
                yield return tri.A;
                yield return tri.B;
                yield return tri.C;
            }

            var indices = triangleIndices
                .SelectMany(item => _split(item))
                .Select(item => (uint)item)
                .ToArray();

            return AddIndices(indices);
        }

        public (int Offset,int Count) AddIndices(uint[] indices)
        {
            int offset = _Indices?.Length ?? 0;
            int count = indices.Length;

            Array.Resize(ref _Indices, offset + count);
            indices.CopyTo(_Indices, offset);

            return (offset, count);            
        }

        public IndexBuffer CreateIndexBuffer(GraphicsDevice graphics)
        {
            var ib = new IndexBuffer(graphics, IndexElementSize.ThirtyTwoBits, _Indices.Length, BufferUsage.None);
            ib.SetData(_Indices);
            return ib;
        }

        public IEnumerable<(int A, int B, int C)> EvaluateTriangles(int offset, int count, int primCount)
        {
            count = Math.Min(count, primCount * 3);

            while(offset < count)
            {
                var a = (int)_Indices[offset++];
                var b = (int)_Indices[offset++];
                var c = (int)_Indices[offset++];

                yield return (a, b, c);
            }
        }

        #endregion
    }
}
