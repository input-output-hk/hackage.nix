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
      identifier = { name = "dhall-toml"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 ear7h";
      maintainer = "GenuineGabriella@gmail.com";
      author = "ear7h";
      homepage = "";
      url = "";
      synopsis = "Convert between Dhall and TOML";
      description = "Use this package if you want to convert between dhall expressions and TOML.\nYou can use this package as a library or an executable:\n\n* See \"Dhall.DhallToToml\" or \"Dhall.TomlToDhall\" modules if you want to use this\npackage as a library\n* Use @dhall-to-toml@, @toml-to-dhall@ programs from this package if you\nwant an executable.\n\nThe \"Dhall.DhallToToml\" and \"Dhall.TomlToDhall\" modules also contains instructions\nfor how to use this package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
        ];
        buildable = true;
      };
      exes = {
        "dhall-to-toml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall-toml" or (errorHandler.buildDepError "dhall-toml"))
          ];
          buildable = true;
        };
        "toml-to-dhall" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall-toml" or (errorHandler.buildDepError "dhall-toml"))
          ];
          buildable = true;
        };
      };
      tests = {
        "dhall-toml-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."dhall-toml" or (errorHandler.buildDepError "dhall-toml"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }