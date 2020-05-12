{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "biocore"; version = "0.3.1"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stringable" or (errorHandler.buildDepError "stringable"))
          ];
        buildable = true;
        };
      };
    }