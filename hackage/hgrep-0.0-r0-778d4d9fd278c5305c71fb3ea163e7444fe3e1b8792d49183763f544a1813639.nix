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
        name = "hgrep";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim@utf8.me";
      author = "Tim Humphries";
      homepage = "https://github.com/thumphries/hgrep";
      url = "";
      synopsis = "Search Haskell source code from the command line";
      description = "Search Haskell source code from the command line.\n\nPowered by <https://hackage.haskell.org/package/ghc-exactprint ghc-exactprint>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.ghc)
          (hsPkgs.ghc-exactprint)
          (hsPkgs.hscolour)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.transformers-bifunctors)
        ];
      };
      exes = {
        "hgrep" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hgrep)
            (hsPkgs.ansi-terminal)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }