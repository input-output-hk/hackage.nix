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
      specVersion = "1.6";
      identifier = {
        name = "frpnow-gloss";
        version = "0.1";
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
      "library" = {
        depends = [
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