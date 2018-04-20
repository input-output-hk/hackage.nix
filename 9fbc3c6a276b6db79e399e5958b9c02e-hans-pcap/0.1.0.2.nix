{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hans-pcap";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "©2014-2015 Marcin Tolysz";
        maintainer = "tolysz@gmail.com";
        author = "Marcin Tolysz";
        homepage = "https://github.com/tolysz/hans-pcap";
        url = "";
        synopsis = "Driver for real ethernet devices for HaNS";
        description = "Network ethernet device for HaNS(Currently requires hans-2.4 from the github), which can tap into a real ethernet interface, all using pcap library and preform raw packet reads & writes.\nThis is a very simple. But requires: root - to be able to use PCAP.";
        buildType = "Simple";
      };
      components = {
        hans-pcap = {
          depends  = [
            hsPkgs.base
            hsPkgs.hans
            hsPkgs.pcap
            hsPkgs.bytestring
          ];
        };
      };
    }