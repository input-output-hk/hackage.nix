{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "language-asn"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 (c) Andrew Martin";
      maintainer = "chessai1996@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/chessai/language-asn.git";
      url = "";
      synopsis = "ASN.1 encoding and decoding";
      description = "ASN.1 language implementation. SNMP uses ASN.1 for serialization.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.hashable)
          (hsPkgs.pretty)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      };
    }