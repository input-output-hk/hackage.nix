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
      identifier = { name = "etc"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "2017, 2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-etc";
      url = "";
      synopsis = "Declarative configuration spec for Haskell projects";
      description = "`etc` gathers configuration values from multiple sources (cli options, OS\nenvironment variables, files) using a declarative spec file that defines where\nthese values are to be found and located in a configuration map.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ] ++ (pkgs.lib).optionals (flags.extra) [
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          ]) ++ (pkgs.lib).optional (flags.cli) (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"));
        buildable = true;
        };
      tests = {
        "etc-testsuite" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."etc" or (errorHandler.buildDepError "etc"))
            ] ++ (pkgs.lib).optional (flags.cli) (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))) ++ (pkgs.lib).optional (flags.extra) (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"));
          buildable = true;
          };
        };
      };
    }