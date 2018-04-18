{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gist";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "simon@joyful.com";
        author = "Simon Michael";
        homepage = "http://github.com/simonmichael/gist";
        url = "";
        synopsis = "A reliable command-line client for gist.github.com";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          gist = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.http-conduit
              hsPkgs.text
            ];
          };
        };
      };
    }