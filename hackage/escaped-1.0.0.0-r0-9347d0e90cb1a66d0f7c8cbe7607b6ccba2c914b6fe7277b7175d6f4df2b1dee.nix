{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "escaped"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Patrick Brisbin";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "https://github.com/pbrisbin/escaped#readme";
      url = "";
      synopsis = "Produce Text with terminal escape sequences";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.text)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "escaped-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.escaped) (hsPkgs.text) ];
          };
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "hspec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.escaped)
            (hsPkgs.hspec)
            (hsPkgs.quickcheck-properties)
            ];
          };
        };
      };
    }