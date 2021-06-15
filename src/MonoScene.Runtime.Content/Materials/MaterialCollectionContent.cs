﻿using System;
using System.Collections.Generic;
using System.Text;

namespace MonoScene.Graphics.Content
{
    public class MaterialCollectionContent
    {
        #region data

        public readonly List<TextureContent> _SharedTextures = new List<TextureContent>();

        public readonly List<MaterialContent> _Materials = new List<MaterialContent>();

        #endregion

        #region API

        public IReadOnlyList<TextureContent> Textures => _SharedTextures;

        public IReadOnlyList<MaterialContent> Materials => _Materials;        

        #endregion
    }
}
