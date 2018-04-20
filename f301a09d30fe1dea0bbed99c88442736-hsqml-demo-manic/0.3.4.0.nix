{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsqml-demo-manic";
          version = "0.3.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2016 Robin KAY";
        maintainer = "komadori@gekkou.co.uk";
        author = "Robin KAY";
        homepage = "http://www.gekkou.co.uk/software/hsqml/";
        url = "";
        synopsis = "HsQML-based clone of Pipe Mania";
        description = "HsQML-based clone of Pipe Mania";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsqml-manic = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.MonadRandom
              hsPkgs.hsqml
            ];
          };
        };
      };
    }