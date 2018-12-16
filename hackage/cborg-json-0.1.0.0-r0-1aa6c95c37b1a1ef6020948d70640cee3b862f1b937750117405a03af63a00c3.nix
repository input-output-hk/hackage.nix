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
        name = "cborg-json";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Duncan Coutts,\n2015-2017 Well-Typed LLP,\n2015 IRIS Connect Ltd";
      maintainer = "ben@smart-cactus.org";
      author = "Duncan Coutts";
      homepage = "https://github.com/well-typed/cborg";
      url = "";
      synopsis = "A library for encoding JSON as CBOR";
      description = "This package implements the bijection between JSON and\nCBOR defined in the CBOR specification, RFC 7049.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.cborg)
        ];
      };
    };
  }