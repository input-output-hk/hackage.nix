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
    flags = {
      development = false;
      pure = false;
      tar-bytestring = false;
      with-brotli = true;
      };
    package = {
      specVersion = "2.0";
      identifier = { name = "hstar"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell version of tar CLI utility";
      description = "Haskell implementation of the tar utility, demonstrating backpack";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hstar" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."archive-sig" or (errorHandler.buildDepError "archive-sig"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lzma" or (errorHandler.buildDepError "lzma"))
            (hsPkgs."bz2" or (errorHandler.buildDepError "bz2"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
            (hsPkgs."lz4-hs" or (errorHandler.buildDepError "lz4-hs"))
            (hsPkgs."lzlib" or (errorHandler.buildDepError "lzlib"))
            ] ++ (pkgs.lib).optional (flags.with-brotli) (hsPkgs."brotli" or (errorHandler.buildDepError "brotli"))) ++ (pkgs.lib).optional (flags.pure) (hsPkgs."archive-tar" or (errorHandler.buildDepError "archive-tar"))) ++ (pkgs.lib).optional (flags.tar-bytestring) (hsPkgs."archive-tar-bytestring" or (errorHandler.buildDepError "archive-tar-bytestring"))) ++ (pkgs.lib).optional (!flags.pure && !flags.tar-bytestring) (hsPkgs."archive-libarchive" or (errorHandler.buildDepError "archive-libarchive"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }