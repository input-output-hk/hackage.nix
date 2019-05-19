{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildreadme = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "focuslist"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell and Grendel-Grendel-Grendel";
      homepage = "https://github.com/cdepillabout/focuslist";
      url = "";
      synopsis = "Lists with a focused element";
      description = "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mono-traversable)
          (hsPkgs.QuickCheck)
          ];
        };
      exes = {
        "focuslist-readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.focuslist)
            (hsPkgs.markdown-unlit)
            ];
          };
        };
      tests = {
        "focuslist-doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            ];
          };
        "focuslist-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.focuslist)
            (hsPkgs.genvalidity-containers)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }