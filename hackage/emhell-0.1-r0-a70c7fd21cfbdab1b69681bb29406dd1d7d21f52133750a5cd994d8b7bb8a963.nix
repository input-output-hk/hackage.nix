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
    flags = { hgdb = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "emhell"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 sorki <srk@48.io>";
      maintainer = "sorki <srk@48.io>";
      author = "sorki <srk@48.io>";
      homepage = "https://github.com/DistRap/emhell";
      url = "";
      synopsis = "Embedded shell";
      description = "Tooling for register exploration using SVD files and GDB-MI or OpenOCD backends";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."data-svd" or (errorHandler.buildDepError "data-svd"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "emhell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."emhell" or (errorHandler.buildDepError "emhell"))
            (hsPkgs."repline" or (errorHandler.buildDepError "repline"))
            (hsPkgs."data-svd" or (errorHandler.buildDepError "data-svd"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "hgdb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."emhell" or (errorHandler.buildDepError "emhell"))
            (hsPkgs."hgdbmi" or (errorHandler.buildDepError "hgdbmi"))
            (hsPkgs."repline" or (errorHandler.buildDepError "repline"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."data-svd" or (errorHandler.buildDepError "data-svd"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if !flags.hgdb then false else true;
          };
        "hocd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."emhell" or (errorHandler.buildDepError "emhell"))
            (hsPkgs."hocd" or (errorHandler.buildDepError "hocd"))
            (hsPkgs."repline" or (errorHandler.buildDepError "repline"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."data-svd" or (errorHandler.buildDepError "data-svd"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }