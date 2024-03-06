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
      specVersion = "3.0";
      identifier = { name = "hb3sum"; version = "0.0.0.2"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "A command line tool to compute BLAKE3 hashes.";
      description = "A command line tool to compute BLAKE3 hashes. Aims at being a b3sum drop-in replacement.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hb3sum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blake3" or (errorHandler.buildDepError "blake3"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }