let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hledger-irr"; version = "0.1.1.14"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "";
      url = "";
      synopsis = "computes the internal rate of return of an investment";
      description = "hledger-irr is a small command-line utility based on Simon\nMichael's hledger library. Its purpose is to compute the internal rate of\nreturn, also known as the effective interest rate, of a given investment.\nAfter specifying what account holds the investment, and what account stores\nthe gains (or losses, or fees, or cost), it calculates the hypothetical\nannualy rate of fixed rate investment that would have provided the exact same\ncash flow.\n\nAs an example, consider the following irregular investment recorded in a file\ncalled @speculation.ledger@. The account “Speculation” holds the investment which\ncould be, for example, a stock. Regularly, we make sure that the value of the\naccount matches the value of the stock, by moving money from or to the account\n“Rate Gain”. It does not really matter when we adjust the price, as long as it\nis correct at the end of our reporting period.\n\n> 2011-01-01 Some wild speculation – I wonder if it pays off\n>   Speculation   €100.00\n>   Cash\n>\n> 2011-02-01 More speculation (and adjustment of value)\n>   Cash         -€10.00\n>   Rate Gain     -€1.00\n>   Speculation\n>\n> 2011-03-01 Lets pull out some money (and adjustment of value)\n>   Cash          €30.00\n>   Rate Gain     -€3.00\n>   Speculation\n>\n> 2011-04-01 More speculation (and it lost some money!)\n>   Cash         -€50.00\n>   Rate Gain     € 5.00\n>   Speculation\n>\n> 2011-05-01 Getting some money out (and adjustment of value)\n>   Speculation  -€44.00\n>   Rate Gain    -€ 3.00\n>   Cash\n>\n> 2011-06-01 Emptying the account (after adjusting the value)\n>   Speculation   -€85.00\n>   Cash           €90.00\n>   Rate Gain     -€ 5.00\n\nWe can now calculate the rate of return for the whole time or just for parts\nof it (and be freaked out by the volatility of the investment):\n\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation -c\n> Resolving dependencies...\n> Build profile: -w ghc-8.0.2 -O1\n> In order, the following will be built (use -v for more details):\n>  - hledger-lib-1.9 (lib) (requires download & build)\n>  - hledger-irr-0.1.1.13 (exe:hledger-irr) (configuration changed)\n> Downloading hledger-lib-1.9...\n> Configuring library for hledger-lib-1.9..\n> Preprocessing library for hledger-lib-1.9..\n> Building library for hledger-lib-1.9..\n> [ 1 of 45] Compiling Text.Megaparsec.Compat ( Text/Megaparsec/Compat.hs, dist/build/Text/Megaparsec/Compat.o )\n> [ 2 of 45] Compiling Paths_hledger_lib ( dist/build/autogen/Paths_hledger_lib.hs, dist/build/Paths_hledger_lib.o )\n> [ 3 of 45] Compiling Hledger.Utils.UTF8IOCompat ( Hledger/Utils/UTF8IOCompat.hs, dist/build/Hledger/Utils/UTF8IOCompat.o )\n> [ 4 of 45] Compiling Hledger.Utils.Test ( Hledger/Utils/Test.hs, dist/build/Hledger/Utils/Test.o )\n> [ 5 of 45] Compiling Hledger.Utils.Regex ( Hledger/Utils/Regex.hs, dist/build/Hledger/Utils/Regex.o )\n> [ 6 of 45] Compiling Hledger.Utils.Tree ( Hledger/Utils/Tree.hs, dist/build/Hledger/Utils/Tree.o )\n> [ 7 of 45] Compiling Hledger.Utils.Color ( Hledger/Utils/Color.hs, dist/build/Hledger/Utils/Color.o )\n> [ 8 of 45] Compiling Hledger.Data.Types ( Hledger/Data/Types.hs, dist/build/Hledger/Data/Types.o )\n> [ 9 of 45] Compiling Hledger.Utils.Parse ( Hledger/Utils/Parse.hs, dist/build/Hledger/Utils/Parse.o )\n> [10 of 45] Compiling Hledger.Utils.Debug ( Hledger/Utils/Debug.hs, dist/build/Hledger/Utils/Debug.o )\n> [11 of 45] Compiling Hledger.Utils.String ( Hledger/Utils/String.hs, dist/build/Hledger/Utils/String.o )\n> [12 of 45] Compiling Hledger.Utils.Text ( Hledger/Utils/Text.hs, dist/build/Hledger/Utils/Text.o )\n> [13 of 45] Compiling Hledger.Utils    ( Hledger/Utils.hs, dist/build/Hledger/Utils.o )\n> [14 of 45] Compiling Hledger.Data.StringFormat ( Hledger/Data/StringFormat.hs, dist/build/Hledger/Data/StringFormat.o )\n> [15 of 45] Compiling Hledger.Data.RawOptions ( Hledger/Data/RawOptions.hs, dist/build/Hledger/Data/RawOptions.o )\n> [16 of 45] Compiling Hledger.Data.Period ( Hledger/Data/Period.hs, dist/build/Hledger/Data/Period.o )\n> [17 of 45] Compiling Hledger.Data.Dates ( Hledger/Data/Dates.hs, dist/build/Hledger/Data/Dates.o )\n> [18 of 45] Compiling Hledger.Data.Commodity ( Hledger/Data/Commodity.hs, dist/build/Hledger/Data/Commodity.o )\n> [19 of 45] Compiling Hledger.Data.Amount ( Hledger/Data/Amount.hs, dist/build/Hledger/Data/Amount.o )\n> [20 of 45] Compiling Hledger.Data.MarketPrice ( Hledger/Data/MarketPrice.hs, dist/build/Hledger/Data/MarketPrice.o )\n> [21 of 45] Compiling Hledger.Data.AccountName ( Hledger/Data/AccountName.hs, dist/build/Hledger/Data/AccountName.o )\n> [22 of 45] Compiling Hledger.Data.Posting ( Hledger/Data/Posting.hs, dist/build/Hledger/Data/Posting.o )\n> [23 of 45] Compiling Hledger.Data.Transaction ( Hledger/Data/Transaction.hs, dist/build/Hledger/Data/Transaction.o )\n> [24 of 45] Compiling Hledger.Data.Timeclock ( Hledger/Data/Timeclock.hs, dist/build/Hledger/Data/Timeclock.o )\n> [25 of 45] Compiling Hledger.Query    ( Hledger/Query.hs, dist/build/Hledger/Query.o )\n> [26 of 45] Compiling Hledger.Data.AutoTransaction ( Hledger/Data/AutoTransaction.hs, dist/build/Hledger/Data/AutoTransaction.o )\n> [27 of 45] Compiling Hledger.Data.Journal ( Hledger/Data/Journal.hs, dist/build/Hledger/Data/Journal.o )\n> [28 of 45] Compiling Hledger.Data.Account ( Hledger/Data/Account.hs, dist/build/Hledger/Data/Account.o )\n> [29 of 45] Compiling Hledger.Data.Ledger ( Hledger/Data/Ledger.hs, dist/build/Hledger/Data/Ledger.o )\n> [30 of 45] Compiling Hledger.Data     ( Hledger/Data.hs, dist/build/Hledger/Data.o )\n> [31 of 45] Compiling Hledger.Read.Common ( Hledger/Read/Common.hs, dist/build/Hledger/Read/Common.o )\n> [32 of 45] Compiling Hledger.Read.CsvReader ( Hledger/Read/CsvReader.hs, dist/build/Hledger/Read/CsvReader.o )\n> [33 of 45] Compiling Hledger.Read.TimeclockReader ( Hledger/Read/TimeclockReader.hs, dist/build/Hledger/Read/TimeclockReader.o )\n> [34 of 45] Compiling Hledger.Read.TimedotReader ( Hledger/Read/TimedotReader.hs, dist/build/Hledger/Read/TimedotReader.o )\n> [35 of 45] Compiling Hledger.Read.JournalReader ( Hledger/Read/JournalReader.hs, dist/build/Hledger/Read/JournalReader.o )\n> [36 of 45] Compiling Hledger.Read     ( Hledger/Read.hs, dist/build/Hledger/Read.o )\n> [37 of 45] Compiling Hledger.Reports.ReportOptions ( Hledger/Reports/ReportOptions.hs, dist/build/Hledger/Reports/ReportOptions.o )\n> [38 of 45] Compiling Hledger.Reports.BalanceReport ( Hledger/Reports/BalanceReport.hs, dist/build/Hledger/Reports/BalanceReport.o )\n> [39 of 45] Compiling Hledger.Reports.EntriesReport ( Hledger/Reports/EntriesReport.hs, dist/build/Hledger/Reports/EntriesReport.o )\n> [40 of 45] Compiling Hledger.Reports.MultiBalanceReports ( Hledger/Reports/MultiBalanceReports.hs, dist/build/Hledger/Reports/MultiBalanceReports.o )\n> [41 of 45] Compiling Hledger.Reports.PostingsReport ( Hledger/Reports/PostingsReport.hs, dist/build/Hledger/Reports/PostingsReport.o )\n> [42 of 45] Compiling Hledger.Reports.TransactionsReports ( Hledger/Reports/TransactionsReports.hs, dist/build/Hledger/Reports/TransactionsReports.o )\n> [43 of 45] Compiling Hledger.Reports  ( Hledger/Reports.hs, dist/build/Hledger/Reports.o )\n> [44 of 45] Compiling Hledger.Reports.BalanceHistoryReport ( Hledger/Reports/BalanceHistoryReport.hs, dist/build/Hledger/Reports/BalanceHistoryReport.o )\n> [45 of 45] Compiling Hledger          ( Hledger.hs, dist/build/Hledger.o )\n> Installing library in /home/jojo/.cabal/store/ghc-8.0.2/incoming/new-24901/home/jojo/.cabal/store/ghc-8.0.2/hledger-lib-1.9-a4cfc04f37ff33dd0edbb6c067f4db8b5f70b0536f8af20da9998bad0f3436df/lib\n> Configuring executable 'hledger-irr' for hledger-irr-0.1.1.13..\n> Preprocessing executable 'hledger-irr' for hledger-irr-0.1.1.13..\n> Building executable 'hledger-irr' for hledger-irr-0.1.1.13..\n> [1 of 2] Compiling Paths_hledger_irr ( /home/jojo/projekte/programming/hledger/hledger-irr/dist-newstyle/build/x86_64-linux/ghc-8.0.2/hledger-irr-0.1.1.13/x/hledger-irr/build/hledger-irr/autogen/Paths_hledger_irr.hs, /home/jojo/projekte/programming/hledger/hledger-irr/dist-newstyle/build/x86_64-linux/ghc-8.0.2/hledger-irr-0.1.1.13/x/hledger-irr/build/hledger-irr/hledger-irr-tmp/Paths_hledger_irr.o ) [/home/jojo/projekte/programming/hledger/hledger-irr/dist-newstyle/build/x86_64-linux/ghc-8.0.2/hledger-irr-0.1.1.13/x/hledger-irr/build/hledger-irr/autogen/cabal_macros.h changed]\n> [2 of 2] Compiling Main             ( Main.hs, /home/jojo/projekte/programming/hledger/hledger-irr/dist-newstyle/build/x86_64-linux/ghc-8.0.2/hledger-irr-0.1.1.13/x/hledger-irr/build/hledger-irr/hledger-irr-tmp/Main.o ) [Hledger changed]\n> Linking /home/jojo/projekte/programming/hledger/hledger-irr/dist-newstyle/build/x86_64-linux/ghc-8.0.2/hledger-irr-0.1.1.13/x/hledger-irr/build/hledger-irr/hledger-irr ...\n> 2011/01/01: €-100.00\n> 2011/02/01: €-10.00\n> 2011/03/01: €30.00\n> 2011/04/01: €-50.00\n> 2011/05/01: €47.00\n> 2011/06/01: €90.00\n> 2011/01/01 - 2018/05/25: -100.00%\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation -e 2011-03-01\n> Up to date\n> 2011/01/01 - 2011/03/01: 26.12%\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation -b 2011-03-01\n> Up to date\n> 2011/03/01 - 2018/05/25: -100.00%\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation --monthly\n> Up to date\n> 2011/01/01 - 2011/02/01: 12.49%\n> 2011/02/01 - 2011/03/01: 41.55%\n> 2011/03/01 - 2011/04/01: -51.44%\n> 2011/04/01 - 2011/05/01: 32.24%\n> 2011/05/01 - 2011/06/01: 95.92%\n\nRunning the utility with @--help@ gives a brief overview over the\navailable options:\n\n> \$ hledger-irr --help\n> Up to date\n> Usage: hledger-irr [OPTION...]\n>   -h          --help                        print this message and exit\n>   -V          --version                     show version number and exit\n>   -c          --cashflow                    also show all revant transactions\n>   -f FILE     --file=FILE                   input ledger file (pass '-' for stdin)\n>   -i ACCOUNT  --investment-account=ACCOUNT  investment account\n>   -t ACCOUNT  --interest-account=ACCOUNT    interest/gain/fees/losses account\n>   -b DATE     --begin=DATE                  calculate interest from this date\n>   -e DATE     --end=DATE                    calculate interest until this date\n>   -D          --daily                       calculate interest for each day\n>   -W          --weekly                      calculate interest for each week\n>   -M          --monthly                     calculate interest for each month\n>   -Y          --yearly                      calculate interest for each year\n\nKnown bugs and issues:\n\n* Currenlty, hledger-irr does not cope well with multiple commodities (e.g.\nEuro and Dollar, or shares).\n\n* Also, interest or fees that do not pass through the account selected by\n@--investment-account@ are not taken into consideration.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hledger-irr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."Decimal" or (buildDepError "Decimal"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }