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
      specVersion = "1.6";
      identifier = { name = "BiobaseTurner"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010,2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Import Turner RNA parameters";
      description = "A data structure for Mathews / Turner RNA and DNA energy\nparameters. This library currently only provides an importer,\nnot export functions. There are two reasons: (i) We currently\nhave no use-case where we need more than import facilities (ii)\nThe file structure is geared towards humans, not machines. If\nyou need to be able to export, send a mail.\n\nThis is the 2011 post-library split version, hence not\ndeprecated anymore.\n\nNOTE This is rather fragile as some files use different index\nenumerations, which we handle rather... simplistically. We\ncannot fix one asymmetry case in dnastack.dh, as we do not\nchange sources.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
        ];
        buildable = true;
      };
    };
  }