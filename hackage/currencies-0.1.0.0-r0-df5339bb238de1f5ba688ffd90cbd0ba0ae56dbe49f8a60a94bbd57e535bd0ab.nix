{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "currencies";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Campoverde [alx741]";
      maintainer = "alx@sillybytes.net";
      author = "Daniel Campoverde [alx741]";
      homepage = "https://github.com/alx741/currencies#readme";
      url = "";
      synopsis = "Currencies representation, pretty printing and conversion";
      description = "ISO 4217 Currencies representation, pretty printing and conversion:\n\n* Represent monetary amouts of a particular currency in a type-safe manner\n\n* Convert amounts between different currencies\n\n* Print human readable amouts";
      buildType = "Simple";
    };
    components = {
      "currencies" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "currencies-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.currencies)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }