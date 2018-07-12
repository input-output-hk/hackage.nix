{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      integer-gmp = true;
      sse2 = true;
      sse41 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hashable";
          version = "1.2.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Milan Straka <fox@ucw.cz>\nJohan Tibell <johan.tibell@gmail.com>";
        homepage = "http://github.com/tibbe/hashable";
        url = "";
        synopsis = "A class for types that can be converted to a hash value";
        description = "This package defines a class, 'Hashable', for types that\ncan be converted to a hash value.  This class\nexists for the benefit of hashing-based data\nstructures.  The package provides instances for\nbasic types and a way to combine hash values.";
        buildType = "Simple";
      };
      components = {
        "hashable" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optionals (compiler.isGhc && true) [
            hsPkgs.ghc-prim
            hsPkgs.text
          ]) ++ pkgs.lib.optional (compiler.isGhc && true && _flags.integer-gmp) hsPkgs.integer-gmp;
          libs = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "6.8")) (pkgs.lib.optional system.isWindows pkgs.advapi32);
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.text
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.ghc-prim
              hsPkgs.siphash
              hsPkgs.text
            ] ++ pkgs.lib.optionals (compiler.isGhc && true) [
              hsPkgs.ghc-prim
              hsPkgs.text
            ]) ++ pkgs.lib.optional (compiler.isGhc && true && _flags.integer-gmp) hsPkgs.integer-gmp;
            libs = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "6.8")) (pkgs.lib.optional system.isWindows pkgs.advapi32);
          };
        };
      };
    }