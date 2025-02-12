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
      specVersion = "3.0";
      identifier = { name = "network-unexceptional"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2023 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/network-unexceptional";
      url = "";
      synopsis = "Network functions that do not throw exceptions";
      description = "Functions compatible with the Socket type from the network library that\ndo not convert POSIX error codes to thrown exceptions. This library\ncan throw exceptions, but they only happen in the case of misuse, not\nas the result of anything a network peer does.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }