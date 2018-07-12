{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bootstrap_external = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "uuagc";
          version = "0.9.50.2";
        };
        license = "BSD-3-Clause";
        copyright = "Universiteit Utrecht";
        maintainer = "Jeroen Bransen <J.Bransen@uu.nl>";
        author = "Software Technology at Universiteit Utrecht";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "Attribute Grammar System of Universiteit Utrecht";
        description = "Generates Haskell files from an attribute grammar specification";
        buildType = "Custom";
      };
      components = {
        "uuagc" = {
          depends  = [
            hsPkgs.uuagc-cabal
            hsPkgs.base
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.array
            hsPkgs.uulib
            hsPkgs.mtl
            hsPkgs.haskell-src-exts
            hsPkgs.filepath
          ];
        };
        exes = {
          "uuagc" = {
            depends  = [
              hsPkgs.uuagc-cabal
              hsPkgs.base
              hsPkgs.base
              hsPkgs.uuagc
            ];
          };
        };
      };
    }