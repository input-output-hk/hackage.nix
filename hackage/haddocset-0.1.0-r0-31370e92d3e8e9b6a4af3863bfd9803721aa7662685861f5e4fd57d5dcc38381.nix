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
        name = "haddocset";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/haddocset";
      url = "";
      synopsis = "Generate docset of Dash by Haddock haskell documentation tool";
      description = "please read README.md <https://github.com/philopon/haddocset/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haddocset" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.optparse-applicative)
            (hsPkgs.conduit)
            (hsPkgs.filesystem-conduit)
            (hsPkgs.tagsoup)
            (hsPkgs.Cabal)
            (hsPkgs.text)
            (hsPkgs.sqlite-simple)
            (hsPkgs.process)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.transformers)
          ] ++ [ (hsPkgs.haddock) ];
        };
      };
    };
  }