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
      specVersion = "2.0";
      identifier = { name = "twobitreader"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2024 Udo Stenzel";
      maintainer = "u.stenzel@web.de";
      author = "Udo Stenzel";
      homepage = "https://bitbucket.org/ustenzel/twobittool";
      url = "";
      synopsis = "reader for the 2bit file format";
      description = "A library and command line tool for working with 2bit files.  2bit is\na compact file format for genomes introduced by Jim Kent with his BLAT\nsuite in the early 2000s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "twobit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."twobitreader" or (errorHandler.buildDepError "twobitreader"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }