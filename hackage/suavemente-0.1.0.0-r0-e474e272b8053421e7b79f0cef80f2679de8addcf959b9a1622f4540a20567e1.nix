{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "suavemente"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/suavemente#readme";
      url = "";
      synopsis = "An applicative functor that seamlessly talks to HTML inputs.";
      description = "Please see the README on GitHub at <https://github.com/isovector/suavemente#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.interpolatedstring-perl6)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-blaze)
          (hsPkgs.servant-server)
          (hsPkgs.servant-websockets)
          (hsPkgs.stm)
          (hsPkgs.streaming)
          (hsPkgs.svg-builder)
          (hsPkgs.transformers)
          (hsPkgs.warp)
          (hsPkgs.websockets)
          ];
        };
      exes = {
        "suavemente-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.servant-websockets)
            (hsPkgs.stm)
            (hsPkgs.streaming)
            (hsPkgs.suavemente)
            (hsPkgs.svg-builder)
            (hsPkgs.transformers)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ];
          };
        };
      };
    }