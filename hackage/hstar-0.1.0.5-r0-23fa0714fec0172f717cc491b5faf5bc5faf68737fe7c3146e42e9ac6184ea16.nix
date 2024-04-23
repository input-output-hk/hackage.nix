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
    flags = { with-brotli = true; with-snappy = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "hstar"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell version of tar CLI utility";
      description = "Haskell implementation of the tar utility, backed by [libarchive](http://libarchive.org/).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hstar" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libarchive" or (errorHandler.buildDepError "libarchive"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lzma" or (errorHandler.buildDepError "lzma"))
            (hsPkgs."bz2" or (errorHandler.buildDepError "bz2"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
            (hsPkgs."lz4-hs" or (errorHandler.buildDepError "lz4-hs"))
            (hsPkgs."lzlib" or (errorHandler.buildDepError "lzlib"))
            (hsPkgs."lzo" or (errorHandler.buildDepError "lzo"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          ] ++ pkgs.lib.optional (flags.with-snappy) (hsPkgs."snappy-lazy" or (errorHandler.buildDepError "snappy-lazy"))) ++ pkgs.lib.optional (flags.with-brotli) (hsPkgs."brotli" or (errorHandler.buildDepError "brotli"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
    };
  }