{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "model";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
        maintainer = "tittoassini@gmail.com";
        author = "Pasqualino `Titto` Assini";
        homepage = "http://github.com/tittoassini/model";
        url = "";
        synopsis = "Derive a model of a data type using Generics";
        description = "See the <http://github.com/tittoassini/model online tutorial>.";
        buildType = "Simple";
      };
      components = {
        model = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.pretty
            hsPkgs.transformers
            hsPkgs.convertible
          ];
        };
        tests = {
          model-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.model
            ];
          };
          model-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filemanip
            ];
          };
        };
      };
    }