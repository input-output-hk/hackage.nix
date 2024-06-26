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
      specVersion = "1.2";
      identifier = { name = "shoap"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "richard.fergie@gmail.com";
      author = "Richard Fergie";
      homepage = "http://richardfergie.com/shoap";
      url = "";
      synopsis = "A very basic SOAP package";
      description = "Wraps a message in SOAP headers and provides a function to POST this message to a URL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
        ];
        buildable = true;
      };
    };
  }