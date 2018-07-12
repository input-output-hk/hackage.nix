{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yampa-canvas";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 The University of Kansas";
        maintainer = "andygill@ku.edu";
        author = "Neil Sculthorpe";
        homepage = "";
        url = "";
        synopsis = "blank-canvas frontend for Yampa";
        description = "@blank-canvas@ frontend for @Yampa@";
        buildType = "Simple";
      };
      components = {
        "yampa-canvas" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blank-canvas
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.Yampa
          ];
        };
        exes = {
          "yampa-canvas-bouncing-balls" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blank-canvas
              hsPkgs.text
              hsPkgs.Yampa
              hsPkgs.yampa-canvas
            ];
          };
        };
      };
    }