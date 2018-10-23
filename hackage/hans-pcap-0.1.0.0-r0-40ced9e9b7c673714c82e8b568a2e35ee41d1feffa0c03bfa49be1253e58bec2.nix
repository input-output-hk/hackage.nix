{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hans-pcap";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/hans-pcap";
      url = "";
      synopsis = "PCAP driver for HaNS";
      description = "Network ethernet device for HaNS(Currently requires hans-2.4 from the github), which can tap into a real ethernet interface, all using pcap library and preform raw packet reads & writes.\nThis is a very simple. But requires: root - to be able to use PCAP.";
      buildType = "Simple";
    };
    components = {
      "hans-pcap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hans)
          (hsPkgs.pcap)
          (hsPkgs.bytestring)
        ];
      };
    };
  }