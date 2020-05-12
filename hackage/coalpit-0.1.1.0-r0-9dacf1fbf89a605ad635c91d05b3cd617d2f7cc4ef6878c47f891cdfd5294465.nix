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
      identifier = { name = "coalpit"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "defanor@uberspace.net";
      author = "defanor";
      homepage = "";
      url = "";
      synopsis = "Command-line options and DSV parsing and printing";
      description = "This library generates parsers and printers for\ngiven data types, in the form of command-line\narguments or DSVs – so that they can be used to\nquickly get program interfaces via a shared\nlibrary, while being suitable for scripting and\nas user interfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          ];
        buildable = true;
        };
      tests = {
        "test-coalpit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."coalpit" or (errorHandler.buildDepError "coalpit"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-travis" or (errorHandler.buildDepError "tasty-travis"))
            ];
          buildable = true;
          };
        };
      };
    }