{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bed-and-breakfast";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/bed-and-breakfast";
      url = "";
      synopsis = "Efficient Matrix operations in 100% Haskell.";
      description = "Efficient Matrix operations in 100% Haskell.\n\n[@v0.1@] Initial version, features @det@,\nbasic arithmetic operations, and instances for\n'Float', 'Double', 'Complex', and 'Rational'.\n\n[@v0.1.1@] Fixed wrong algorithm for computing the\ninverse of a Matrix.\n\n[@v0.1.2@] Added instances for @Num Matrix@,\n@Fractional Matrix@, and @Eq Matrix@.";
      buildType = "Simple";
    };
    components = {
      "bed-and-breakfast" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }