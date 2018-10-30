{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "snappy";
        version = "0.1.0.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
        libs = [
          (pkgs."snappy")
          (pkgs."stdc++")
        ];
      };
    };
  }