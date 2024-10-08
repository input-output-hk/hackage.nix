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
      identifier = { name = "random-access-list"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Stephan Friedrichs";
      maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
      author = "Stephan Friedrichs";
      homepage = "";
      url = "";
      synopsis = "Random-access lists in Haskell";
      description = "A purely functional random-access list implementation\nusing skew binary number representation. These lists\noffer indexed random-access in logarithmic time while\nstill providing typical list functionality (head, tail,\ncons) in constant time. See \\\"Purely Functional Data\nStructures\\\" by Chris Okasaki.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }