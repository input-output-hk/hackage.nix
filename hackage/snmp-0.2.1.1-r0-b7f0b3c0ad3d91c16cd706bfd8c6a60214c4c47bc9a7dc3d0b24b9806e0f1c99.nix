{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snmp"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Smirnov <chemistmail@gmail.com>";
      author = "Alexey Smirnov";
      homepage = "";
      url = "";
      synopsis = "API for write snmp client.";
      description = "API for write snmp client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-parse)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.async)
          (hsPkgs.binary)
          (hsPkgs.network-info)
          (hsPkgs.cryptohash)
          (hsPkgs.cipher-des)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.securemem)
          (hsPkgs.random)
          (hsPkgs.cipher-aes)
          ];
        };
      };
    }