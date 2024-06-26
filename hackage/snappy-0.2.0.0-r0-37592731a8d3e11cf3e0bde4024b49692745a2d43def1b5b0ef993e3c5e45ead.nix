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
      identifier = { name = "snappy"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/mailrank/snappy";
      url = "";
      synopsis = "Bindings to the Google Snappy library for fast compression/decompression";
      description = "This library provides fast, pure Haskell bindings to Google's Snappy\ncompression and decompression library: <http://code.google.com/p/snappy/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        libs = [
          (pkgs."snappy" or (errorHandler.sysDepError "snappy"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ];
        buildable = true;
      };
    };
  }