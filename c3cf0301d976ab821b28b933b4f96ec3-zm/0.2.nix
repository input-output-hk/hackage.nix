{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zm";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
        maintainer = "tittoassini@gmail.com";
        author = "Pasqualino `Titto` Assini";
        homepage = "http://github.com/tittoassini/zm";
        url = "";
        synopsis = "Language independent, reproducible, absolute types";
        description = "See the <http://github.com/tittoassini/zm online tutorial>.";
        buildType = "Simple";
      };
      components = {
        zm = {
          depends  = [
            hsPkgs.ListLike
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.flat
            hsPkgs.model
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.text
            hsPkgs.transformers
          ] ++ (if compiler.isGhcjs
            then [ hsPkgs.ghcjs-base ]
            else [
              hsPkgs.cryptonite
              hsPkgs.memory
            ]);
        };
        tests = {
          zm-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.pretty
              hsPkgs.ListLike
              hsPkgs.flat
              hsPkgs.model
              hsPkgs.zm
              hsPkgs.timeit
            ];
          };
        };
      };
    }