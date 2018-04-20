{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hsns";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "austin@youareinferior.net";
        author = "Austin Seipp";
        homepage = "";
        url = "";
        synopsis = "the haskell network sniffer";
        description = "a network sniffer written in a purely fun language";
        buildType = "Custom";
      };
      components = {
        exes = {
          hsns = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.pcap
            ];
          };
        };
      };
    }