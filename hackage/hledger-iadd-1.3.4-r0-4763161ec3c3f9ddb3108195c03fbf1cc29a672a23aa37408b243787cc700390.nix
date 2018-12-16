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
        name = "hledger-iadd";
        version = "1.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Hans-Peter Deifel";
      maintainer = "Hans-Peter Deifel <hpd@hpdeifel.de>";
      author = "Hans-Peter Deifel <hpd@hpdeifel.de>";
      homepage = "https://github.com/hpdeifel/hledger-iadd#readme";
      url = "";
      synopsis = "A terminal UI as drop-in replacement for hledger add";
      description = "This is a terminal UI as drop-in replacement for hledger add.\n\nIt improves in the following ways on hledger's add command:\n\n* Interactive as-you-type completion for\naccount names and descriptions with optional\nfuzzy matching.\n\n* Integrated calculator: Amounts can be written\nas simple sums with real-time feedback on the\nresult.\n\n* All actions while entering a transaction can\nbe undone\n\n* Configurable format for date input. Instead\nof @y\\/m\\/d@ it is also possible to use other\nformats like the german @d.m.y@.";
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
          (hsPkgs.microlens-th)
          (hsPkgs.text-zipper)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.megaparsec)
          (hsPkgs.containers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.directory)
          (hsPkgs.xdg-basedir)
          (hsPkgs.unordered-containers)
          (hsPkgs.free)
          (hsPkgs.semigroups)
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
            (hsPkgs.free)
            (hsPkgs.megaparsec)
            (hsPkgs.text-zipper)
          ];
        };
      };
    };
  }