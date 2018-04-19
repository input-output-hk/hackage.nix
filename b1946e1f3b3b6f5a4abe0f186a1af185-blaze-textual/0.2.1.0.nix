{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      native = true;
      integer-simple = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blaze-textual";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://github.com/bos/blaze-textual";
        url = "";
        synopsis = "Fast rendering of common datatypes";
        description = "A library for efficiently rendering Haskell datatypes to\nbytestrings.\n\n/Note/: if you use GHCi or Template Haskell, please see the\n@README@ file for important details about building this package,\nand other packages that depend on it:\n<https://github.com/bos/blaze-textual#readme>";
        buildType = "Simple";
      };
      components = {
        blaze-textual = {
          depends  = ([
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!_flags.native) hsPkgs.double-conversion) ++ (if _flags.integer-simple
            then [ hsPkgs.integer-simple ]
            else [ hsPkgs.integer-gmp ]);
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.blaze-textual
              hsPkgs.bytestring
              hsPkgs.double-conversion
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }