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
      identifier = { name = "tsv2csv"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "librarymaintainer@mackeycorp.com";
      author = "Bob Grudem";
      homepage = "";
      url = "";
      synopsis = "Convert tsv to csv";
      description = "Convert tsv to csv";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      exes = {
        "tsv2csv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tsv2csv" or (errorHandler.buildDepError "tsv2csv"))
            ];
          buildable = true;
          };
        };
      };
    }