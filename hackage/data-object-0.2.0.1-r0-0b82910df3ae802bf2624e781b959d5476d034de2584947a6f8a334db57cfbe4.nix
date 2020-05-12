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
    flags = { buildtests = false; nolib = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "data-object"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/snoyberg/data-object/tree/master";
      url = "";
      synopsis = "Represent hierachichal structures, called objects in JSON.";
      description = "These objects show up in different places, eg JSON, Yaml.\nBy providing a representation in a separate repository,\nother libraries can share a single representation of\nthese structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."safe-failure" or (errorHandler.buildDepError "safe-failure"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."attempt" or (errorHandler.buildDepError "attempt"))
          (hsPkgs."convertible-text" or (errorHandler.buildDepError "convertible-text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = if flags.nolib then false else true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }