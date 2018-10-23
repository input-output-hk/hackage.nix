{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "numeric-prelude";
        version = "0.4.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <numericprelude@henning-thielemann.de>";
      author = "Dylan Thurston <dpt@math.harvard.edu>, Henning Thielemann <numericprelude@henning-thielemann.de>, Mikael Johansson";
      homepage = "http://www.haskell.org/haskellwiki/Numeric_Prelude";
      url = "";
      synopsis = "An experimental alternative hierarchy of numeric type classes";
      description = "The package provides an experimental alternative hierarchy\nof numeric type classes.\nThe type classes are more oriented at mathematical structures\nand their methods come with laws that the instances must fulfill.";
      buildType = "Simple";
    };
    components = {
      "numeric-prelude" = {
        depends  = [
          (hsPkgs.parsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.storable-record)
          (hsPkgs.non-negative)
          (hsPkgs.semigroups)
          (hsPkgs.utility-ht)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.base)
        ];
      };
      exes = {
        "numeric-prelude-demo" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.numeric-prelude)
            (hsPkgs.base)
          ];
        };
        "numeric-prelude-gaussian" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.gnuplot)
            (hsPkgs.HTam)
            (hsPkgs.numeric-prelude)
            (hsPkgs.QuickCheck)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "numeric-prelude-test" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.HUnit)
            (hsPkgs.numeric-prelude)
            (hsPkgs.QuickCheck)
            (hsPkgs.utility-ht)
            (hsPkgs.random)
            (hsPkgs.base)
          ];
        };
      };
    };
  }