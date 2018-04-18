{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "c0parser";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "ds@iai.uni-bonn.de";
        author = "Daniel Seidel";
        homepage = "";
        url = "";
        synopsis = "Simple C0 Parser";
        description = "The package contains a parser for C0 programs.\nThe C0-language is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2011/12 and later) at the University of Bonn.";
        buildType = "Simple";
      };
      components = {
        c0parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }