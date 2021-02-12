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
      specVersion = "1.18";
      identifier = { name = "sak"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Compression command-line tool";
      description = "sak is a command-line tool that detects and handles various compression formats";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sak" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lzlib" or (errorHandler.buildDepError "lzlib"))
            (hsPkgs."bz2" or (errorHandler.buildDepError "bz2"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
            (hsPkgs."lzma" or (errorHandler.buildDepError "lzma"))
            (hsPkgs."lz4-hs" or (errorHandler.buildDepError "lz4-hs"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }