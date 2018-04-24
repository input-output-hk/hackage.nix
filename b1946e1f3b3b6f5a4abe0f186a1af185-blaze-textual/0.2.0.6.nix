{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      native = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blaze-textual";
          version = "0.2.0.6";
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
          depends  = (([
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!_flags.native) hsPkgs.double-conversion) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11") hsPkgs.integer-gmp) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11")) hsPkgs.integer;
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