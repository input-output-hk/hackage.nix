{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "currency-codes"; version = "3.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2017 Chordify";
      maintainer = "Matthias Benkort <matthias.benkort@gmail.com>";
      author = "Chordify";
      homepage = "https://github.com/chordify/currency-codes";
      url = "";
      synopsis = "ISO-4217 Currency Codes";
      description = "ISO-4217 Currency Codes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bson)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.text)
          ];
        };
      tests = {
        "currency-codes-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.currency-codes)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bson)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }