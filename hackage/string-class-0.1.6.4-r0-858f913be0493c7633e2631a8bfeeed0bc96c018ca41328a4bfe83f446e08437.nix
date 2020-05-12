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
      identifier = { name = "string-class"; version = "0.1.6.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "https://github.com/bairyn/string-class";
      url = "";
      synopsis = "String class library";
      description = "String class library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      };
    }