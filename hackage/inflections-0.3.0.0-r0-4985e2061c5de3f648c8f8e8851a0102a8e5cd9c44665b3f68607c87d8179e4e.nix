{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "inflections";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "2014–2016 Justin Leitgeb";
      maintainer = "Justin Leitgeb <justin@stackbuilders.com>";
      author = "Justin Leitgeb <justin@stackbuilders.com>";
      homepage = "https://github.com/stackbuilders/inflections-hs";
      url = "";
      synopsis = "Inflections library for Haskell";
      description = "Inflections provides methods for singularization, pluralization,\ndasherizing, etc. The library is based on Rails' inflections library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.inflections)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }