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
      identifier = { name = "usb-safe"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Wrapper around the usb package adding extra type-safety";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unicode-symbols" or (errorHandler.buildDepError "unicode-symbols"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          ];
        buildable = true;
        };
      };
    }