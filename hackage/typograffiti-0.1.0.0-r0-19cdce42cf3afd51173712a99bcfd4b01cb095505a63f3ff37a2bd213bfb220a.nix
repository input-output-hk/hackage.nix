{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "typograffiti";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/typograffiti#readme";
      url = "";
      synopsis = "Display TTF fonts in OpenGL. Includes caching for fast rendering.";
      description = "Please see the README on GitHub at <https://github.com/githubuser/typograffiti#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          depends  = [
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
          depends  = [
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