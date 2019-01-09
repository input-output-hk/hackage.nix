{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger-iadd"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hans-Peter Deifel";
      maintainer = "hpd@hpdeifel.de";
      author = "Hans-Peter Deifel";
      homepage = "http://github.com/rootzlevel/hledger-iadd#readme";
      url = "";
      synopsis = "A terminal UI as drop-in replacement for hledger add";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hledger-lib)
          (hsPkgs.brick)
          (hsPkgs.vty)
          (hsPkgs.text)
          (hsPkgs.microlens)
          (hsPkgs.text-zipper)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.megaparsec)
          (hsPkgs.containers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.directory)
          (hsPkgs.text-format)
          (hsPkgs.xdg-basedir)
          (hsPkgs.unordered-containers)
          (hsPkgs.free)
          ];
        };
      exes = {
        "hledger-iadd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hledger-iadd)
            (hsPkgs.hledger-lib)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.text-zipper)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.text-format)
            (hsPkgs.xdg-basedir)
            (hsPkgs.unordered-containers)
            (hsPkgs.free)
            (hsPkgs.megaparsec)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hledger-iadd)
            (hsPkgs.hledger-lib)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.text-format)
            (hsPkgs.free)
            (hsPkgs.megaparsec)
            ];
          };
        };
      };
    }