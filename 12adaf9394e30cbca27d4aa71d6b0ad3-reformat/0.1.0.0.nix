{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reformat";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2018 Johann Lee <me@qinka.pro>";
        maintainer = "qinka@live.com";
        author = "Johann Lee";
        homepage = "https://github.com/Qinka/reformat";
        url = "";
        synopsis = "The parser and render to parsec and render the string.";
        description = "A frame work wih parser and render to reformat the key infors.";
        buildType = "Simple";
      };
      components = {
        reformat = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }