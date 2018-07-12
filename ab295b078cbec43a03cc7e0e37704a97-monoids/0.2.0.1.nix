{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      optimize = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "monoids";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader";
        url = "";
        synopsis = "Monoids, specialized containers and a general map/reduce framework";
        description = "Monoids, specialized containers and a general map/reduce framework";
        buildType = "Simple";
      };
      components = {
        "monoids" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.fingertree
            hsPkgs.text
            hsPkgs.parallel
          ];
        };
      };
    }