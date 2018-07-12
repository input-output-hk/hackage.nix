{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "IFS";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, alpha";
        maintainer = "misc@NOSPAMalpheccar.org";
        author = "alpheccar";
        homepage = "http://www.alpheccar.org";
        url = "";
        synopsis = "Iterated Function System generation for Haskell";
        description = "Library to describe IFS and generate PPM pictures from the descriptions";
        buildType = "Custom";
      };
      components = {
        "IFS" = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.bytestring
              hsPkgs.array
            ]
            else [ hsPkgs.base ];
        };
        exes = { "IFS" = {}; };
      };
    }