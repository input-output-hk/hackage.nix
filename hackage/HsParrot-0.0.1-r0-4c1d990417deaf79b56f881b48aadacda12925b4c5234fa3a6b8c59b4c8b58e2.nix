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
      specVersion = "1.0";
      identifier = { name = "HsParrot"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Audrey Tang, 2008";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Haskell integration with Parrot virtual machine";
      description = "Haskell integration with Parrot virtual machine";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pugs-DrIFT" or (errorHandler.buildDepError "pugs-DrIFT"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
        ];
        buildable = true;
      };
    };
  }