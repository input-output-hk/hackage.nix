{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hledger-irr";
          version = "0.1.1.11";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
        author = "Joachim Breitner <mail@joachim-breitner.de>";
        homepage = "";
        url = "";
        synopsis = "computes the internal rate of return of an investment";
        description = "hledger-irr is a small command-line utility based on Simon\nMichael's hledger library. Its purpose is to compute the internal rate of\nreturn, also known as the effective interest rate, of a given investment.\nAfter specifying what account holds the investment, and what account stores\nthe gains (or losses, or fees, or cost), it calculates the hypothetical\nannualy rate of fixed rate investment that would have provided the exact same\ncash flow.\n\nAs an example, consider the following irregular investment recorded in a file\ncalled @speculation.ledger@. The account “Speculation” holds the investment which\ncould be, for example, a stock. Regularly, we make sure that the value of the\naccount matches the value of the stock, by moving money from or to the account\n“Rate Gain”. It does not really matter when we adjust the price, as long as it\nis correct at the end of our reporting period.\n\n> 2011-01-01 Some wild speculation – I wonder if it pays off\n>   Speculation   €100.00\n>   Cash\n>\n> 2011-02-01 More speculation (and adjustment of value)\n>   Cash         -€10.00\n>   Rate Gain     -€1.00\n>   Speculation\n>\n> 2011-03-01 Lets pull out some money (and adjustment of value)\n>   Cash          €30.00\n>   Rate Gain     -€3.00\n>   Speculation\n>\n> 2011-04-01 More speculation (and it lost some money!)\n>   Cash         -€50.00\n>   Rate Gain     € 5.00\n>   Speculation\n>\n> 2011-05-01 Getting some money out (and adjustment of value)\n>   Speculation  -€44.00\n>   Rate Gain    -€ 3.00\n>   Cash\n>\n> 2011-06-01 Emptying the account (after adjusting the value)\n>   Speculation   -€85.00\n>   Cash           €90.00\n>   Rate Gain     -€ 5.00\n\nWe can now calculate the rate of return for the whole time or just for parts\nof it (and be freaked out by the volatility of the investment):\n\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation -c\n> 2011/01/01: €-100.00\n> 2011/02/01: €-10.00\n> 2011/03/01: €30.00\n> 2011/04/01: €-50.00\n> 2011/05/01: €47.00\n> 2011/06/01: €90.00\n> 2011/01/01 - 2017/07/01: -100.00%\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation -e 2011-03-01\n> 2011/01/01 - 2011/03/01: 26.12%\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation -b 2011-03-01\n> 2011/03/01 - 2017/07/01: -100.00%\n> \$ hledger-irr -f speculation.ledger -t \"Rate Gain\" -i Speculation --monthly\n> 2011/01/01 - 2011/02/01: 12.49%\n> 2011/02/01 - 2011/03/01: 41.55%\n> 2011/03/01 - 2011/04/01: -51.44%\n> 2011/04/01 - 2011/05/01: 32.24%\n> 2011/05/01 - 2011/06/01: 95.92%\n\nRunning the utility with @--help@ gives a brief overview over the\navailable options:\n\n> \$ hledger-irr --help\n> Usage: hledger-irr [OPTION...]\n>   -h          --help                        print this message and exit\n>   -V          --version                     show version number and exit\n>   -c          --cashflow                    also show all revant transactions\n>   -f FILE     --file=FILE                   input ledger file (pass '-' for stdin)\n>   -i ACCOUNT  --investment-account=ACCOUNT  investment account\n>   -t ACCOUNT  --interest-account=ACCOUNT    interest/gain/fees/losses account\n>   -b DATE     --begin=DATE                  calculate interest from this date\n>   -e DATE     --end=DATE                    calculate interest until this date\n>   -D          --daily                       calculate interest for each day\n>   -W          --weekly                      calculate interest for each week\n>   -M          --monthly                     calculate interest for each month\n>   -Y          --yearly                      calculate interest for each year\n\nKnown bugs and issues:\n\n* Currenlty, hledger-irr does not cope well with multiple commodities (e.g.\nEuro and Dollar, or shares).\n\n* Also, interest or fees that do not pass through the account selected by\n@--investment-account@ are not taken into consideration.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hledger-irr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hledger-lib
              hsPkgs.Decimal
              hsPkgs.time
              hsPkgs.Cabal
              hsPkgs.statistics
              hsPkgs.text
            ];
          };
        };
      };
    }