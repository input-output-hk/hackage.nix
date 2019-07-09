{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "suavemente"; version = "0.2.0.0"; };
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          (hsPkgs.containers)
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
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.warp)
          (hsPkgs.websockets)
          ];
        };
      };
    }