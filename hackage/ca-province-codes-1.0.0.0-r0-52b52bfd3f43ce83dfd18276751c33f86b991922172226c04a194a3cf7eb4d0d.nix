{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ca-province-codes"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019, Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/ca-province-codes#readme";
      url = "";
      synopsis = "ISO 3166-2:CA Province Codes and Names";
      description = "This package contains a @Code@ data type containing each Canadian Province and Territory, as well as functions for converting from and to the English subdivision names.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.aeson) (hsPkgs.base) (hsPkgs.text) ]; };
      tests = {
        "ca-province-codes-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ca-province-codes)
            (hsPkgs.hspec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }