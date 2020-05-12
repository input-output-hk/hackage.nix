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
      specVersion = "0";
      identifier = { name = "polytypeable-utils"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "";
      url = "";
      synopsis = "Utilities for polytypeable.";
      description = "Utilities for polytypeable (Typeable for polymorphic types).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."polytypeable" or (errorHandler.buildDepError "polytypeable"))
          ];
        buildable = true;
        };
      };
    }