{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "opentype";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Kristof Bastiaensen (2014)";
        maintainer = "Kristof Bastiaensen";
        author = "Kristof Bastiaensen";
        homepage = "";
        url = "";
        synopsis = "Opentype loading and writing";
        description = "This library supports loading and writing of opentype files.";
        buildType = "Simple";
      };
      components = {
        opentype = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.ghc
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.pretty-hex
          ];
        };
        tests = { test = {}; };
      };
    }