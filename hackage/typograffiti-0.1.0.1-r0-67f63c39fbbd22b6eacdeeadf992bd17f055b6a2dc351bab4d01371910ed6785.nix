{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "typograffiti"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/typograffiti#readme";
      url = "";
      synopsis = "Just let me draw nice text already";
      description = "This is a text rendering library that uses OpenGL and freetype2 to render TTF font strings quickly. It is fast enough to render large chunks of text in real time. This library exists because text rendering is one of the biggest hurdles in Haskell graphics programming - and it shouldn't be!\nTypograffiti includes an MTL style typeclass and a default monad transformer. It does not assume you are using any specific windowing solution. It does assume you are using OpenGL 3.3+.\nPull requests are very welcome :)\nSee https://github.com/schell/typograffiti/blob/master/app/Main.hs for an example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.freetype2)
          (hsPkgs.gl)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "typograffiti-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.freetype2)
            (hsPkgs.gl)
            (hsPkgs.linear)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.sdl2)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.typograffiti)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "typograffiti-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.freetype2)
            (hsPkgs.gl)
            (hsPkgs.linear)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.typograffiti)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }