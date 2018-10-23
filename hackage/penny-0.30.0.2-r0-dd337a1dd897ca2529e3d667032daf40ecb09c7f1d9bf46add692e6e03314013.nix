{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
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
        version = "0.30.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2013 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system";
      description = "Penny is a double-entry accounting system. It is inspired\nby, but incompatible with, John Wiegley's Ledger, which is available\nat <http://ledger-cli.org/>. Installing this package with cabal\ninstall will install the executable program and the necessary\nlibraries.\n\n* Penny is a double-entry accounting system. It uses traditional\naccounting terminology, such as the terms \\\"Debit\\\" and\n\\\"Credit\\\". If you need a refresher on the basics of double-entry\naccounting, pick up a used accounting textbook from your favorite\nbookseller (they can be had cheaply, for less than ten U.S. dollars\nincluding shipping) or check out\n<http://www.principlesofaccounting.com/>, a great free online text.\n\n* Penny is based around \"Penny.Lincoln\", a core library to represent\ntransactions and postings and their components, such as their\namounts and whether they are debits and credits. You can use\nLincoln all by itself even if you don't use the other components\nof Penny, which you may find handy if you are a Haskell\nprogrammer. I wrote Penny because I wanted a precise library to\nrepresent my accounting data so I could analyze it programatically\nand verify its consistency.\n\n* Penny's command line interface and its reports give you\ngreat flexibility to filter and sort postings. Each posting\nwithin a transaction may have its own flags assigned (e.g. to\nindicate whether the posting is cleared) and each posting may have\ninfinite \\\"tags\\\" assigned to it, giving you another way to\ncategorize your postings. For instance, you might have vacation\nrelated postings in several different accounts, but you can give\nthem all a \\\"vacation\\\" tag.\n\n* You can easily build a program to process downloads of Open\nFinancial Exchange data from your financial institution. Your\nprogram will merge new transactions into your ledger\nautomatically.\n\n* Full Unicode support.\n\n* Penny's reports have color baked in from the beginning. You do not\nhave to use color, which is handy if you are sending\noutput to a file or if, well, you just don't like color.\n\n* Penny's reports automatically adjust themselves to the width of\nyour screen. You can easily specify how much or how little data to\nsee with command line options.\n\n* Penny handles multiple commodities (for example, multiple\ncurrencies, stocks and bonds, tracking other assets, etc.) in an\neasy and transparent way that is consistent with double-entry\naccounting principles. It embraces the philosophy outlined in this\ntutorial on multiple commodity accounting:\n<http://www.mscs.dal.ca/~selinger/accounting/tutorial.html>.\n\n* Penny stores amounts using only integers.  This ensures the\naccuracy of your data, as using floating point values to represent\nmoney is a bad idea. Here is one explanation:\n<http://stackoverflow.com/questions/3730019/why-not-use-double-or-float-to-represent-currency>. The\nuse of integer arithmetic also makes Penny simpler internally, as\nthere is no need for arbitrary rounding to compensate for the\nbizarre and inaccurate results that sometimes arise from the use of\nfloating-point values to represent currencies.\n\n* Freely licensed under the MIT license. If you take this code,\nimprove it, lock it up and make it proprietary, and sell it,\nAWESOME! I haven't lost anything because I still have my code and,\nwhat's more, then maybe I can buy your product and not have to\nmaintain this one any more!\n\n* Tested using QuickCheck. The tests are available in the Git\nrepository that also contains the main library. Not everything\nis tested, but the tests that exist so far have already rooted\nout some strange corner-case bugs.\n\nNon-features / disadvantages:\n\n* Written in Haskell. Yes, I think Haskell is the best tool ever,\nbut its compiler is not as commonly installed as compilers for C\nor C++, and non-Haskellers will probably find Penny to be more\ndifficult to install than Ledger, as the latter is written in C++.\n\n* Handling commodities requires that you set up multiple accounts;\nsome might find this cumbersome.\n\n* Young and not well tested yet.\n\n* Runs only on Unix-like operating systems.\n\n* Full Penny functionality is available without a Haskell compiler;\nyou could even use a pre-compiled binary.  However, Penny does not\nread configuration files at runtime; instead, to change the\ndefault settings, you will need to have GHC installed so that you\ncan compile a custom binary.\n\n* Can be slow and memory hungry with large data sets. I have a\nledger file with about 28,000 lines. On my least capable machine\n(which has an Intel Core 2 Duo at 1.6 GHz) this takes about 1.4\nseconds to parse. Not horrible but not instantaneous\neither. Generating a report about all these transactions can take\nabout seven seconds and a little less than 300 MB of memory. I\nhave eliminated all the obvious slowness from the code and\nattempted a rewrite of the parser, which made no difference; other\nideas to speed up Penny with large data sets would involve\nsubstantial changes and this is not at the top of my list because\nthe program is currently usable with relatively recent hardware.\n\nUnfortunately running \\\"cabal install\\\" will not\ninstall the documentation, so you will need to find the downloaded\narchive (usually in\n\\\"\$HOME/.cabal/packages/hackage.haskell.org/penny\\\") and unpack it\nto see the documentation. You will want to start by reading the\nREADME file, which will point you to additional documentation and\nhow to install it if you wish.";
      buildType = "Simple";
    };
    components = {
      "penny" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.action-permutations)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
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
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.multiarg)
            (hsPkgs.transformers)
          ];
        };
        "penny-diff" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.multiarg)
          ];
        };
        "penny-reprint" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
            (hsPkgs.multiarg)
            (hsPkgs.pretty-show)
            (hsPkgs.text)
          ];
        };
        "penny-reconcile" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.multiarg)
          ];
        };
        "penny-gibberish" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.penny)
            (hsPkgs.QuickCheck)
            (hsPkgs.random-shuffle)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.multiarg)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "penny-test" = {
          depends  = [
            (hsPkgs.penny)
            (hsPkgs.QuickCheck)
            (hsPkgs.random-shuffle)
            (hsPkgs.base)
            (hsPkgs.multiarg)
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