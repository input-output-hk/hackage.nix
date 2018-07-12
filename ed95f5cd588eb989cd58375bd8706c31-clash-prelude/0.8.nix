{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      doctests = true;
      doclinks = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-prelude";
          version = "0.8";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright © 2013-2015 University of Twente";
        maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
        author = "Christiaan Baaij";
        homepage = "http://www.clash-lang.org/";
        url = "";
        synopsis = "CAES Language for Synchronous Hardware - Prelude library";
        description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modeled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* Prelude library containing datatypes and functions for circuit design\n\nTo use the library:\n\n* Import \"CLaSH.Prelude\"\n\n* Additionally import \"CLaSH.Prelude.Explicit\" if you want to design\nexplicitly clocked circuits in a multi-clock setting\n\nA preliminary version of a tutorial can be found in \"CLaSH.Tutorial\", for a\ngeneral overview of the library you should however check out \"CLaSH.Prelude\".\nSome circuit examples can be found in \"CLaSH.Examples\".";
        buildType = "Simple";
      };
      components = {
        "clash-prelude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.integer-gmp
            hsPkgs.ghc-prim
            hsPkgs.ghc-typelits-natnormalise
            hsPkgs.lens
            hsPkgs.QuickCheck
            hsPkgs.singletons
            hsPkgs.template-haskell
            hsPkgs.th-lift
          ] ++ pkgs.lib.optional _flags.doclinks hsPkgs.transformers;
        };
        tests = {
          "doctests" = {
            depends  = pkgs.lib.optionals (!(!_flags.doctests)) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }