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
      specVersion = "1.18";
      identifier = { name = "byteset"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      author = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      homepage = "";
      url = "";
      synopsis = "Set of bytes.";
      description = "Data structure for sets of bytes, where bytes are @Word8@ values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }