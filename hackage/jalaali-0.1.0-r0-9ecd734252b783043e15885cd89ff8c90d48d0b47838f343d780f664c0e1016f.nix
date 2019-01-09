{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jalaali"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "behrangn@gmail.com";
      author = "Behrang Noruzi Niya";
      homepage = "https://github.com/jalaali/jalaali-hs";
      url = "";
      synopsis = "Convert Jalaali and Gregorian calendar systems to each other";
      description = "A few Haskell functions for converting\nJalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) and\nGregorian calendar systems to each other.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = { "test" = { depends = [ (hsPkgs.base) ]; }; };
      benchmarks = {
        "bench" = {
          depends = [ (hsPkgs.base) (hsPkgs.time) (hsPkgs.deepseq) ];
          };
        };
      };
    }