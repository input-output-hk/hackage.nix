{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-index";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Ilya Pershin";
        maintainer = "pershin2010@gmail.com";
        author = "Ilya Pershin";
        homepage = "https://github.com/Toucandy/data-index#readme";
        url = "";
        synopsis = "Extending the concept of indices for lists and other containers";
        description = "Please see the README on GitHub at <https://github.com/Toucandy/data-index#readme>";
        buildType = "Simple";
      };
      components = {
        data-index = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }