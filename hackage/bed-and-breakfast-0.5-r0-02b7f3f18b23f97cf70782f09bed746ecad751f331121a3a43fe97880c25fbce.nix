{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bed-and-breakfast"; version = "0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "https://hackage.haskell.org/package/bed-and-breakfast";
      url = "";
      synopsis = "Efficient Matrix and Vector operations in 100% Haskell.";
      description = "Efficient Matrix and Vector operations in 100% Haskell.\n\nThis library uses boxed and unboxed arrays\nin the ST monad, in order to achieve efficiency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.template-haskell)
          (hsPkgs.cpphs)
          ];
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bed-and-breakfast)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }