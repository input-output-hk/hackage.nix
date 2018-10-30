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
        name = "asn1-codec";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/asn1-codec";
      url = "";
      synopsis = "Encode and decode ASN.1";
      description = "Add a better description later";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.vector)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
        ];
      };
      tests = {
        "asn1-records-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.asn1-codec)
            (hsPkgs.test-framework)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.base16-bytestring)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }