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
      specVersion = "1.8";
      identifier = { name = "whois"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "http://github.com/CodeBlock/whois-hs";
      url = "";
      synopsis = "WHOIS client library.";
      description = "Provides a simple client to return WHOIS information about\nIP addresses or hostnames.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
    };
  }