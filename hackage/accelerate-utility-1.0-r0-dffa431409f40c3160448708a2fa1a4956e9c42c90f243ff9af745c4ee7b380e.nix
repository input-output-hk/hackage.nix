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
      specVersion = "1.14";
      identifier = {
        name = "accelerate-utility";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-utility/";
      url = "";
      synopsis = "Utility functions for the Accelerate framework";
      description = "Several utility functions on top of the Accelerate framework.\nThe functions simplify working with indices and lifting and unlifting.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.accelerate)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
    };
  }