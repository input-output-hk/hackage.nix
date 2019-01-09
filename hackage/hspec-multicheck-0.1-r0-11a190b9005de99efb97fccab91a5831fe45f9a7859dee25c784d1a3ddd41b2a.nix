{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspec-multicheck"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Marcellus Siegburg <msi@informatik.uni-kiel.de>";
      author = "Marcellus Siegburg";
      homepage = "https://github.com/marcellussiegburg/hspec-multicheck";
      url = "";
      synopsis = "A testing framework for Haskell using Hspec";
      description = "Hspec Multicheck is an extension to the framework Hspec for\nHaskell. It enables execution of all defined tests using multiple\ndifferent testing libraries while avoiding code duplication.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.hspec-smallcheck)
          (hsPkgs.QuickCheck)
          (hsPkgs.smallcheck)
          ];
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.hspec-multicheck) ];
          };
        };
      };
    }