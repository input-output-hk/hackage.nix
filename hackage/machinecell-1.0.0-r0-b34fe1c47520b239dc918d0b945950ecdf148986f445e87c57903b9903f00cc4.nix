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
        name = "machinecell";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Hidenori Azuma";
      maintainer = "Hidenori Azuma <as.capabl@gmail.com>";
      author = "Hidenori Azuma";
      homepage = "";
      url = "";
      synopsis = "Arrow based stream transducers";
      description = "Stream processing library similar to pipe, couduit, machines. With support of arrow combinatins, or the arrow notation. AFRP-like utilities are also available.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haddock)
          (hsPkgs.free)
          (hsPkgs.profunctors)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.machinecell)
          ];
        };
      };
    };
  }