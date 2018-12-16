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
        name = "scuttlebutt-types";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 bkil.hu, Peter Ferenc Hajdu, Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "bkil.hu, Peter Ferenc Hajdu, Joey Hess";
      homepage = "";
      url = "";
      synopsis = "generic types for Secure Scuttlebutt";
      description = "Secure Scuttlebutt is a database of unforgeable append-only feeds,\noptimized for efficient replication for peer to peer protocols.\n\nThis library contains data types for common Scuttlebutt messages,\nincluding JSON deserialization.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.aeson)
          (hsPkgs.ed25519)
          (hsPkgs.cryptonite)
          (hsPkgs.text)
          (hsPkgs.memory)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "scuttlebutt-types-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.scuttlebutt-types)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.text)
          ];
        };
      };
    };
  }