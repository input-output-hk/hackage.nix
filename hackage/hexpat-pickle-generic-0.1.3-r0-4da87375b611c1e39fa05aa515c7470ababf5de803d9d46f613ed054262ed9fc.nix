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
      specVersion = "1.10";
      identifier = { name = "hexpat-pickle-generic"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "";
      url = "";
      synopsis = "Picklers for de/serialising Generic data types to and from XML";
      description = "An IsXML class and GHC.Generics implementation for pickleable\ndata types using hexpat and hexpat-pickle.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hexpat-pickle" or (errorHandler.buildDepError "hexpat-pickle"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }