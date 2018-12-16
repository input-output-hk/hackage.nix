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
        name = "reverse-geocoding";
        version = "0.1.0.1";
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
      "library" = {
        depends = [
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