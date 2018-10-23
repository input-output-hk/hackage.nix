{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HerbiePlugin";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "github.com/mikeizbicki/herbie-haskell";
      url = "";
      synopsis = "automatically improve your code's numeric stability";
      description = "This package contains a GHC plugin that automatically improves the numerical stability of your Haskell code.\nSee <http://github.com/mikeizbicki/HerbiePlugin the github repo> for details on how it works and how to use it.";
      buildType = "Simple";
    };
    components = {
      "HerbiePlugin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.template-haskell)
          (hsPkgs.process)
          (hsPkgs.sqlite-simple)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.subhask)
            (hsPkgs.HerbiePlugin)
          ];
        };
      };
    };
  }