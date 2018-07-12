{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "delimited-text";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Stefan Kersten 2008";
        maintainer = "Stefan Kersten";
        author = "Stefan Kersten";
        homepage = "http://code.haskell.org/~StefanKersten/code/delimited-text";
        url = "";
        synopsis = "Parse character delimited textual data";
        description = "Parse character delimited textual data";
        buildType = "Simple";
      };
      components = {
        "delimited-text" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.bytestring-show
          ];
        };
      };
    }