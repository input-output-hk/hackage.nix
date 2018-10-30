{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { generate = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "country-codes";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
      author = "JP Moresmau <jpmoresmau@gmail.com>";
      homepage = "https://github.com/prowdsponsor/country-codes";
      url = "";
      synopsis = "ISO 3166 country codes and i18n names.";
      description = "ISO 3166 country codes and i18n names.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.shakespeare)
        ];
      };
      exes = {
        "country-codes-generate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.tagsoup)
          ];
        };
      };
      tests = {
        "country-codes-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.country-codes)
            (hsPkgs.HTF)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }