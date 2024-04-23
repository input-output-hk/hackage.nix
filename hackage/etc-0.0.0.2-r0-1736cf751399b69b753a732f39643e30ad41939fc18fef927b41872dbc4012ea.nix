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
    flags = { extra = false; cli = false; yaml = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "etc"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "2017 Roman Gonzalez";
      maintainer = "romanandreg@gmail.com";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-etc";
      url = "";
      synopsis = "Declarative configuration spec for Haskell projects";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optionals (flags.extra) [
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
        ]) ++ pkgs.lib.optional (flags.cli) (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))) ++ pkgs.lib.optional (flags.yaml) (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"));
        buildable = true;
      };
      tests = {
        "etc-testsuite" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))
            (hsPkgs."etc" or (errorHandler.buildDepError "etc"))
          ] ++ pkgs.lib.optional (flags.cli) (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))) ++ pkgs.lib.optional (flags.yaml) (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))) ++ pkgs.lib.optional (flags.extra) (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"));
          buildable = true;
        };
      };
    };
  }