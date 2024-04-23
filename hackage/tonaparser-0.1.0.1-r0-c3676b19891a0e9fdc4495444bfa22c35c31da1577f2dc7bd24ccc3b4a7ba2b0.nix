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
    flags = { buildexample = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "tonaparser"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "Scalable way to pass runtime configurations for tonatona";
      description = "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @tonatona@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."say" or (errorHandler.buildDepError "say"))
        ];
        buildable = true;
      };
      exes = {
        "tonaparser-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."say" or (errorHandler.buildDepError "say"))
            (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
          ];
          buildable = if flags.buildexample then true else false;
        };
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."say" or (errorHandler.buildDepError "say"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."say" or (errorHandler.buildDepError "say"))
            (hsPkgs."tonatona" or (errorHandler.buildDepError "tonatona"))
          ];
          buildable = true;
        };
      };
    };
  }