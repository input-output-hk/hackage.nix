{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pcap";
          version = "0.4.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan, Nick Burlett, Dominic Steinitz, Gregory Wright (original author)";
        homepage = "http://bitbucket.org/bos/pcap";
        url = "";
        synopsis = "A system-independent interface for user-level packet capture";
        description = "A system-independent interface for user-level packet capture";
        buildType = "Configure";
      };
      components = {
        "pcap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.time
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") hsPkgs.base;
        };
      };
    }