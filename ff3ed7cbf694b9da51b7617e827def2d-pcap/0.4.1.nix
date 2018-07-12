{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "pcap";
          version = "0.4.1";
        };
        license = "BSD-4-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan, Nick Burlett, Dominic Steinitz, Gregory Wright (original author)";
        homepage = "";
        url = "";
        synopsis = "A system-independent interface for user-level packet capture";
        description = "A system-independent interface for user-level packet capture";
        buildType = "Custom";
      };
      components = {
        "pcap" = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.network
            hsPkgs.time
          ] ++ (if _flags.bytestring-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
            ]);
        };
      };
    }