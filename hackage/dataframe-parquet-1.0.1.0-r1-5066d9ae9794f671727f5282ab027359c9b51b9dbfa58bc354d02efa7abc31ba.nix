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
      specVersion = "2.4";
      identifier = { name = "dataframe-parquet"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2024-2025 Michael Chavinda";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "";
      url = "";
      synopsis = "Parquet reader and writer for the dataframe ecosystem.";
      description = "@DataFrame.IO.Parquet@ — pure-Haskell Parquet 2.0 reader and writer\n(with snappy, zstd, gzip codecs, dictionary decoding, nested\nlist/repeated columns, predicate pushdown, and HTTP range reads).\nHeavy package — pulls in @pinch@, @streamly@, compression codecs,\nand @http-conduit@. Most users want @dataframe-csv@ instead unless\nthey specifically need Parquet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          (hsPkgs."dataframe-parsing" or (errorHandler.buildDepError "dataframe-parsing"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."pinch" or (errorHandler.buildDepError "pinch"))
          (hsPkgs."snappy-hs" or (errorHandler.buildDepError "snappy-hs"))
          (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
        ];
        buildable = true;
      };
    };
  }