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
      identifier = { name = "ochintin-daicho"; version = "0.3.4.1"; };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-ochintin-daicho#readme";
      url = "";
      synopsis = "A module to manage payroll books for Japanese companies.";
      description = "A module to manage payroll books for Japanese companies. This enable to export data to tax withholding book, etc...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bookkeeping" or (errorHandler.buildDepError "bookkeeping"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transaction" or (errorHandler.buildDepError "transaction"))
          ];
        buildable = true;
        };
      tests = {
        "ochintin-daicho-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ochintin-daicho" or (errorHandler.buildDepError "ochintin-daicho"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."ochintin-daicho" or (errorHandler.buildDepError "ochintin-daicho"))
            ];
          buildable = true;
          };
        };
      };
    }