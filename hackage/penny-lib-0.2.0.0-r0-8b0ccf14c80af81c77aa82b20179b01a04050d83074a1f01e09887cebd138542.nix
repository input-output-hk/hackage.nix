{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "penny-lib"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2012 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system - library";
      description = "Penny is a double-entry accounting system. It is inspired\nby, but incompatible with, John Wiegley's Ledger, which is available\nat <http://ledger-cli.org/>. You will want to install the package\npenny-bin by using cabal install penny-bin, which will install the\nexecutable program and this library as well. Features:\n\n* Penny is a double-entry accounting system. It uses traditional\naccounting terminology, such as the terms \\\"Debit\\\" and\n\\\"Credit\\\". If you need a refresher on the basics of double-entry\naccounting, pick up a used accounting textbook from your favorite\nbookseller (they can be had cheaply, for less than ten U.S. dollars\nincluding shipping) or check out\n<http://www.principlesofaccounting.com/>, a great free online text.\n\n* Penny is based around \"Penny.Lincoln\", a core library to represent\ntransactions and postings and their components, such as their\namounts and whether they are debits and credits. You can use\nLincoln all by itself even if you don't use the other components\nof Penny, which you may find handy if you are a Haskell\nprogrammer. I wrote Penny because I wanted a precise library to\nrepresent my accounting data so I could analyze it programatically\nand verify its consistency. I wrote it in Haskell not because I\nwanted to write something in Haskell but because Haskell is the\nbest tool for this job (I used to use the shell, combined with\nLedger, which is a messy combination.)\n\n* Penny's command line interface, Zinc, and its reports, Cabin, give\nyou unparalleled flexibility to filter and sort postings. Each\nposting within a transaction may have its own flags assigned\n(e.g. to indicate whether the posting is cleared) and each posting\nmay have infinite \\\"tags\\\" assigned to it, giving you another way\nto categorize your postings. For instance, you might have vacation\nrelated postings in several different accounts, but you can give\nthem all a \\\"vacation\\\" tag.\n\n* Full Unicode support. Also, you may set which characters you wish\nto use to represent the radix point and the digit grouping\ncharacter in your ledger file.\n\n* Penny's reports, in \"Penny.Cabin\", have color baked in from the\nbeginning. You do not have to use color, though, which is handy if\nyou are sending output to a file or if, well, you just don't like\ncolor.\n\n* Penny's reports are customizable in Haskell, giving you an easy\nand powerful way to make your own reports without writing cryptic\nformatting strings.\n\n* Penny handles multiple commodities (for example, multiple\ncurrencies, stocks and bonds, tracking other assets, etc.) in an\neasy and transparent way that is consistent with double-entry\naccounting principles. It embraces the philosophy outlined in this\ntutorial on multiple commodity accounting:\n<http://www.mscs.dal.ca/~selinger/accounting/tutorial.html>.\n\n* Penny stores amounts using only integers, building from the\nData.Decimal library available at\n<http://hackage.haskell.org/package/Decimal>. This ensures the\naccuracy of your data, as using floating point values to represent\nmoney is a bad idea. Here is one explanation:\n<http://stackoverflow.com/questions/3730019/why-not-use-double-or-float-to-represent-currency>. The\nuse of integer arithmetic also makes Penny simpler internally, as\nthere is no need for arbitrary rounding to compensate for the\nbizarre and inaccurate results that sometimes arise from the use of\nfloating-point values to represent currencies.\n\n* Freely licensed under the MIT license. If you take this code,\nimprove it, lock it up and make it proprietary, and sell it,\nAWESOME! I haven't lost anything because I still have my code and,\nwhat's more, then maybe I can buy your product and not have to\nmaintain this one any more!\n\n* Uses no GHC extensions. However, the code is only tested under GHC\nand for all practical purposes it will only run under GHC at this\ntime because it uses libraries such as Data.Text that are\navailable only under GHC. Despite this I expect I will continue to\navoid language extensions.\n\nNon-features / disadvantages:\n\n* Written in Haskell. Yes, I think Haskell is the best tool ever,\nbut its compiler is not as commonly installed as compilers for C\nor C++, and non-Haskellers will probably find Penny to be more\ndifficult to install than Ledger, as the latter is written in C++.\n\n* Handling commodities requires that you set up multiple accounts;\nsome might find this cumbersome.\n\n* Young and not well tested yet. Also, only tested on Unix. It\nprobably would not be difficult to make Penny run on Windows; if\nsomeone wants to do that, go ahead.\n\n* Full Penny functionality is available without a Haskell compiler;\nyou could even use a pre-compiled binary. However, to fully\ncustomize Penny, you will need a Haskell compiler installed.\n\n* Can be slow and memory hungry with large data sets. I have a\nledger file with about 28,000 lines. On my least capable machine\n(which has an Intel Core 2 Duo at 1.6 GHz) this takes about 1.4\nseconds to parse. Not horrible but not instantaneous\neither. Generating a report about all these transactions can take\nabout seven seconds and a little less than 300 MB of memory. I\nhave eliminated all the obvious slowness from the code and\nattempted a rewrite of the parser, which made no difference; other\nideas to speed up Penny with large data sets would involve\nsubstantial changes and this is not at the top of my list because\nthe program is currently usable with relatively recent hardware.\n\nMore details about the organization of the Penny modules is\navailable by examining the top \"Penny\" module.\n\nThis is only a library. For the executable package, which also\nincludes more documentation, search for the penny-bin package on\nHackage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
          (hsPkgs."matchers" or (errorHandler.buildDepError "matchers"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }