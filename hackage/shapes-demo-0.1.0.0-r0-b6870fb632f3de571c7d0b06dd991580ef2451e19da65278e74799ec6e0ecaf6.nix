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
      specVersion = "1.10";
      identifier = {
        name = "shapes-demo";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Kynan Rilee";
      maintainer = "kynan.rilee@gmail.com";
      author = "Kynan Rilee";
      homepage = "https://github.com/ublubu/shapes#readme";
      url = "";
      synopsis = "demos for the 'shapes' package";
      description = "Please see the README on Github at <https://github.com/ublubu/shapes#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "shapes-demo" = {
          depends = [
            (hsPkgs.StateVar)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.monad-extras)
            (hsPkgs.mtl)
            (hsPkgs.sdl2)
            (hsPkgs.shapes)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }