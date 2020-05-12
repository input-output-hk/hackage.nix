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
      identifier = { name = "strict-writer"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2017 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/strict-writer";
      url = "";
      synopsis = "A stricter writer, which uses StateT in order to avoid space leaks.";
      description = "A stricter writer, which uses StateT in order to avoid space leaks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "strict-writer-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."strict-writer" or (errorHandler.buildDepError "strict-writer"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }