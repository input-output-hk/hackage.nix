{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "accelerate-utility";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/accelerate-utility/";
      url = "";
      synopsis = "Utility functions for the Accelerate framework";
      description = "Several utility functions on top of the Accelerate framework.\nThe functions simplify working with indices and lifting and unlifting.";
      buildType = "Simple";
    };
    components = {
      "accelerate-utility" = {
        depends  = [
          (hsPkgs.accelerate)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
    };
  }