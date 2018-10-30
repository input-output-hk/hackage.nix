{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-gibberish = false;
      build-penny = true;
      build-selloff = true;
      build-diff = true;
      build-reprint = true;
      build-reconcile = true;
      debug = false;
      test = false;
      incabal = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "penny";
        version = "0.32.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2014 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system";
      description = "Penny is a double-entry accounting system.  You keep your records in a\nplain-text file, and Penny gives you useful reports in your UNIX shell.\n\nFor more information, please see\n\n<http://www.github.com/massysett/penny>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.anonymous-sums)
          (hsPkgs.matchers)
          (hsPkgs.multiarg)
          (hsPkgs.ofx)
          (hsPkgs.prednote)
          (hsPkgs.rainbow)
          (hsPkgs.action-permutations)
          (hsPkgs.cereal)
          (hsPkgs.either)
          (hsPkgs.pretty-show)
          (hsPkgs.semigroups)
        ];
      };
      exes = {
        "penny-gibberish" = {
          depends  = pkgs.lib.optionals (flags.build-gibberish) [
            (hsPkgs.penny)
            (hsPkgs.base)
            (hsPkgs.multiarg)
            (hsPkgs.QuickCheck)
            (hsPkgs.random-shuffle)
            (hsPkgs.random)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "penny" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
          ];
        };
        "penny-selloff" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
          ];
        };
        "penny-diff" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
          ];
        };
        "penny-reprint" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
          ];
        };
        "penny-reconcile" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "penny-test" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
            (hsPkgs.multiarg)
            (hsPkgs.anonymous-sums)
            (hsPkgs.QuickCheck)
            (hsPkgs.random-shuffle)
            (hsPkgs.parsec)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }