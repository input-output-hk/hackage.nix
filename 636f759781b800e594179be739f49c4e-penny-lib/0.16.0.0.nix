{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
      test = false;
      incabal = true;
      buildlib = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "penny-lib";
        version = "0.16.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2013 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system - library";
      description = "Penny is a double-entry accounting system. It is inspired\nby, but incompatible with, John Wiegley's Ledger, which is available\nat <http://ledger-cli.org/>.\n\nThis package is a library. To start using Penny you will want to\ninstall the penny-bin package, which has the executable programs.\nMore about the penny-bin package, along with a full sales pitch\nfor Penny and how to get started, is at\n<http://hackage.haskell.org/package/penny-bin>. It may be installed\nwith \"cabal install penny-bin\".\n\nThe Penny library is a full system to work with double-entry\naccounting transactions and postings and to make reports with them.";
      buildType = "Simple";
    };
    components = {
      "penny-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.action-permutations)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.explicit-exception)
          (hsPkgs.matchers)
          (hsPkgs.multiarg)
          (hsPkgs.ofx)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.prednote)
          (hsPkgs.pretty-show)
          (hsPkgs.rainbow)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "penny-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.action-permutations)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.matchers)
            (hsPkgs.monad-loops)
            (hsPkgs.multiarg)
            (hsPkgs.ofx)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.pcre-light)
            (hsPkgs.prednote)
            (hsPkgs.pretty-show)
            (hsPkgs.rainbow)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.strict)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.random-shuffle)
          ];
        };
        "penny-gibberish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.action-permutations)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.matchers)
            (hsPkgs.monad-loops)
            (hsPkgs.multiarg)
            (hsPkgs.ofx)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.pcre-light)
            (hsPkgs.prednote)
            (hsPkgs.pretty-show)
            (hsPkgs.rainbow)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.strict)
            (hsPkgs.terminfo)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.random-shuffle)
            (hsPkgs.random)
          ];
        };
      };
    };
  }