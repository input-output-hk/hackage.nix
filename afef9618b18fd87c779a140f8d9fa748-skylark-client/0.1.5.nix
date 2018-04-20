{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "skylark-client";
          version = "0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/githubuser/skylark-client#readme";
        url = "";
        synopsis = "Skylark client.";
        description = "Skylark network client.";
        buildType = "Simple";
      };
      components = {
        skylark-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-async
            hsPkgs.preamble
            hsPkgs.stm
            hsPkgs.stm-conduit
          ];
        };
        exes = {
          skylark-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit-extra
              hsPkgs.optparse-generic
              hsPkgs.preamble
              hsPkgs.skylark-client
            ];
          };
          shake-skylark-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakers
            ];
          };
        };
      };
    }