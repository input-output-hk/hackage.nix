{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snappy";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://github.com/bos/snappy";
        url = "";
        synopsis = "Bindings to the Google Snappy library for fast compression/decompression";
        description = "This library provides fast, pure Haskell bindings to Google's Snappy\ncompression and decompression library: <http://code.google.com/p/snappy/>";
        buildType = "Simple";
      };
      components = {
        snappy = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          libs = [
            pkgs.snappy
            pkgs."stdc++"
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.snappy
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }