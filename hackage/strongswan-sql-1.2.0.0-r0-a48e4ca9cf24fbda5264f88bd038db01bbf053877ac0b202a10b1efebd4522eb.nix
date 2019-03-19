{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "strongswan-sql"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Interface library for strongSwan SQL backend";
      description = "Interface library and companion CLI tool to configure strongSwan IPsec over MySQL backend";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-types)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.failable)
          (hsPkgs.haskeline)
          (hsPkgs.io-streams)
          (hsPkgs.iproute)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.mysql-haskell)
          (hsPkgs.network)
          (hsPkgs.structured-cli)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "strongswan-sql" = {
          depends = [
            (hsPkgs.asn1-encoding)
            (hsPkgs.asn1-types)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.failable)
            (hsPkgs.haskeline)
            (hsPkgs.io-streams)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.mysql-haskell)
            (hsPkgs.network)
            (hsPkgs.strongswan-sql)
            (hsPkgs.structured-cli)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "strongswan-sql-test" = {
          depends = [
            (hsPkgs.asn1-encoding)
            (hsPkgs.asn1-types)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.failable)
            (hsPkgs.haskeline)
            (hsPkgs.io-streams)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.mysql-haskell)
            (hsPkgs.network)
            (hsPkgs.strongswan-sql)
            (hsPkgs.structured-cli)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }