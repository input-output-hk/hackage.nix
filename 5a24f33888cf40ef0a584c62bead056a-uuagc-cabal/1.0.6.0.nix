{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "uuagc-cabal";
          version = "1.0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "Universiteit Utrecht";
        maintainer = "Jeroen Bransen <J.Bransen@uu.nl>";
        author = "Software Technology at Universiteit Utrecht";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "Cabal plugin for the Universiteit Utrecht Attribute Grammar System";
        description = "Cabal plugin for UUAGC";
        buildType = "Simple";
      };
      components = {
        "uuagc-cabal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.uulib
            hsPkgs.filepath
            hsPkgs.mtl
          ];
        };
      };
    }