{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Etherbunny";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "nickburlett@mac.com";
        author = "Nick Burlett";
        homepage = "http://etherbunny.anytini.com/";
        url = "";
        synopsis = "A network analysis toolkit for Haskell";
        description = "A network analysis toolkit for Haskell, based on the Network.Pcap library. Currently not very useful, but getting there.";
        buildType = "Simple";
      };
      components = {
        "Etherbunny" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.network
            hsPkgs.pcap
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
        exes = {
          "etherbunny" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.network
              hsPkgs.pcap
              hsPkgs.binary
              hsPkgs.bytestring
            ];
            libs = [ pkgs.pcap ];
          };
        };
      };
    }