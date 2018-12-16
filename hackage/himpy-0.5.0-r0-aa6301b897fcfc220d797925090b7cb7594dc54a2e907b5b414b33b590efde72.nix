{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "himpy";
        version = "0.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "pyr@spootnik.org";
      author = "Pierre-Yves Ritschard";
      homepage = "https://github.com/pyr/himpy";
      url = "";
      synopsis = "multithreaded snmp poller for riemann";
      description = "Himpy provides a multi-threaded snmp poller which reports\nto riemann.\n\nPolled MIBs are grouped in recipes and produce relative results\nwhereever possible (for instance, the storage recipe reports percents).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "himpy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.NetSNMP)
            (hsPkgs.bytestring)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.type-level)
            (hsPkgs.cereal)
            (hsPkgs.protobuf)
            (hsPkgs.text)
            (hsPkgs.MissingH)
            (hsPkgs.old-time)
            (hsPkgs.network)
            (hsPkgs.regex-posix)
            (hsPkgs.binary)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }