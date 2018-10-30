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
        name = "non-empty-text";
        version = "0.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Antoine Catton <devel@antoine.catton.fr>";
      author = "Antoine Catton";
      homepage = "https://github.com/acatton/haskell-non-empty-text#readme";
      url = "";
      synopsis = "Non empty Data.Text type";
      description = "Typesafe thin wrapper around Data.Text to make impossible to be empty (to\nalways holt at least on character)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.text)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.non-empty-text)
            (hsPkgs.text)
          ];
        };
      };
    };
  }