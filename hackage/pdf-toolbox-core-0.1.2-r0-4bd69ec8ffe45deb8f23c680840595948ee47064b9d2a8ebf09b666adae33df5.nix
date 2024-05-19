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
    flags = { zlib = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pdf-toolbox-core"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2012-2016";
      maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/pdf-toolbox";
      url = "";
      synopsis = "A collection of tools for processing PDF files.";
      description = "Low level tools for processing PDF files.\n\nLevel of abstraction: cross reference, trailer, indirect object, object\n\nThe API is based on random access input streams, and is designed to be memory efficient.\nWe don't need to parse the entire PDF file and store it in memory when you need just one page or two.\nUsually it is also leads to time efficiency, but we don't try optimize performance\nby e.g. maintaining xref or object cache. Higher level layers should take care of it.\n\nThe library is low level. It may mean that you need to be familiar with PDF file internals to\nactually use it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pdf-toolbox-core" or (errorHandler.buildDepError "pdf-toolbox-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }