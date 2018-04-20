{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "incremental";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/incremental#readme";
        url = "";
        synopsis = "incremental update library";
        description = "Generic interface for incremental updates";
        buildType = "Simple";
      };
      components = {
        incremental = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.deepseq
          ];
        };
        tests = {
          incremental-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.incremental
            ];
          };
        };
      };
    }