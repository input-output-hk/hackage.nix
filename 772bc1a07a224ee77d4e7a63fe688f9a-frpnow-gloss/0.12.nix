{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "frpnow-gloss";
        version = "0.12";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzeus@gmail.com";
      author = "Atze van der Ploeg";
      homepage = "https://github.com/atzeus/FRPNow";
      url = "";
      synopsis = "Program awesome stuff with Gloss and frpnow!";
      description = "Program awesome stuff with Gloss and frpnow!";
      buildType = "Simple";
    };
    components = {
      "frpnow-gloss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.frpnow)
          (hsPkgs.gloss)
        ];
      };
    };
  }