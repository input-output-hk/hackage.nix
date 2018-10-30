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
        name = "biocore";
        version = "0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@malde.org";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "A bioinformatics library";
      description = "A set of core definitions and data structures\ncommonly used in bioinformatics.  The intention is that bioinformatics\nlibraries will use this as a common ground to avoid needless incompatibilities\nand duplicated work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }