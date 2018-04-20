{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fillit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 ishiy";
        maintainer = "ishiy <y.ishihara.1993@gmail.com>";
        author = "ishiy <y.ishihara.1993@gmail.com>";
        homepage = "https://github.com/ishiy1993/fillit#readme";
        url = "";
        synopsis = "Flexible string substitution";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        fillit = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.data-default
            hsPkgs.parsec
            hsPkgs.text
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.unordered-containers
              hsPkgs.doctest
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.unordered-containers
              hsPkgs.hspec
              hsPkgs.fillit
            ];
          };
        };
      };
    }