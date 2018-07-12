{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flat";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
        maintainer = "tittoassini@gmail.com";
        author = "Pasqualino `Titto` Assini";
        homepage = "http://github.com/Quid2/flat";
        url = "";
        synopsis = "Principled and efficient bit-oriented binary serialization.";
        description = "Principled and efficient bit-oriented binary serialization, check the <http://github.com/Quid2/flat online tutorial>.";
        buildType = "Simple";
      };
      components = {
        "flat" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.ghc-prim
            hsPkgs.mono-traversable
            hsPkgs.pretty
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.vector
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.semigroups;
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.quickcheck-instances
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.flat
            ];
          };
          "docs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filemanip
            ];
          };
        };
      };
    }