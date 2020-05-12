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
      identifier = { name = "extractelf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/extractelf";
      url = "";
      synopsis = "Extract an ELF's metadata and sections into files";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "extractelf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."elf" or (errorHandler.buildDepError "elf"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }