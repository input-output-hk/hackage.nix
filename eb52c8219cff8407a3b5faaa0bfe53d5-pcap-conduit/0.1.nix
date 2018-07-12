{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pcap-conduit";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Austin Seipp <mad.one@gmail.com>";
        author = "Austin Seipp <mad.one@gmail.com>";
        homepage = "http://github.com/thoughtpolice/pcap-conduit";
        url = "";
        synopsis = "Conduit <-> libpcap";
        description = "Provides a conduit source for reading from pcap files or live network\ndevices.";
        buildType = "Simple";
      };
      components = {
        "pcap-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.pcap
            hsPkgs.conduit
          ];
        };
      };
    }