{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reverse-geocoding";
        version = "0.2.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmacristovao@gmail.com";
      author = "João Cristóvão";
      homepage = "https://github.com/jcristovao/reverse-geocoding";
      url = "";
      synopsis = "Simple reverse geocoding using OpenStreeMap";
      description = "Simple reverse geocoding using OpenStreeMap";
      buildType = "Simple";
    };
    components = {
      "reverse-geocoding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.iso3166-country-codes)
        ];
      };
    };
  }