{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "snmp"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 (c) Andrew Martin";
      maintainer = "chessai1996@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/chessai/snmp.git";
      url = "";
      synopsis = "SNMP protocol library";
      description = "SNMP library for writing client applications with SNMP";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.ip)
          (hsPkgs.language-asn)
          (hsPkgs.memory)
          (hsPkgs.stm)
          (hsPkgs.vector)
          (hsPkgs.network)
          ];
        };
      };
    }