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
      identifier = { name = "currency-convert"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pigworts2@gmail.com";
      author = "Tuomas Laakkonen";
      homepage = "http://tuomas56.github.io/currency-convert";
      url = "";
      synopsis = "Typesafe currency conversion";
      description = "A typesafe currency conversion system with a various exchange rate sources for over 30 currencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }