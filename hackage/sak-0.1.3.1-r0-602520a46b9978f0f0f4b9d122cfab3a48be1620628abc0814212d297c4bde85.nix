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
    flags = { with-brotli = false; with-snappy = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "sak"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020-2021 Vanessa McHale";
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
          depends = ([
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
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."lzo" or (errorHandler.buildDepError "lzo"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          ] ++ pkgs.lib.optional (flags.with-snappy) (hsPkgs."snappy-lazy" or (errorHandler.buildDepError "snappy-lazy"))) ++ pkgs.lib.optional (flags.with-brotli) (hsPkgs."brotli" or (errorHandler.buildDepError "brotli"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
    };
  }