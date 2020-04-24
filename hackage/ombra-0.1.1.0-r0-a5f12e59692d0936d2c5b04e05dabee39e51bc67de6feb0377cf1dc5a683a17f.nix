{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { opengl = true; webgl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ombra"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2016 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "Type-safe render engine, with a purely functional API and a shader EDSL. Ombra supports both OpenGL (2.0 with some extensions) and WebGL, through GHCJS.\n\n\nThe modules you generally need to use are:\n\n\"Graphics.Rendering.Ombra.D3\": 3D graphics\n\n\"Graphics.Rendering.Ombra.D2\": 2D graphics\n\n\"Graphics.Rendering.Ombra.Generic\": although both D3 and D2 export it, you may want to read the documentation\n\n\"Graphics.Rendering.Ombra.Shader\": for creating shaders\n\n\"Graphics.Rendering.Ombra.Draw\": this lets you render the pure objects you create with D2 and D3\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vect" or ((hsPkgs.pkgs-errors).buildDepError "vect"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          ] ++ (pkgs.lib).optional (flags.opengl && !(compiler.isGhcjs && true)) (hsPkgs."gl" or ((hsPkgs.pkgs-errors).buildDepError "gl"))) ++ (pkgs.lib).optional (flags.webgl && (compiler.isGhcjs && true)) (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"));
        buildable = true;
        };
      };
    }