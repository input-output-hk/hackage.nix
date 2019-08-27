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
    flags = { buildexamples = false; splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "spreadsheet"; version = "0.1.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Spreadsheet";
      url = "";
      synopsis = "Read and write spreadsheets from and to CSV files in a lazy way";
      description = "Read and write spreadsheets from and to files\ncontaining comma separated values (CSV) in a lazy way.\nReading from other source than plain 'String's could be easily added.\n\nIf you install this package by\n\n> cabal install -fbuildExamples\n\nthen the example program @csvreplace@ is compiled and installed, too.\nThis program fills a template text using data from a CSV file.\nFor similar (non-Haskell) programs see @cut@, @csvfix@, @csvtool@.\n\nRelated packages:\n\n* @csv@: strict parser\n\n* <http://www.xoltar.org/languages/haskell.html>,\n<http://www.xoltar.org/languages/haskell/CSV.hs>: strict parser\n\n* @lazy-csv@: lazy @String@ and @ByteString@ parser\n\n* @cassava@: high-level CSV parser that treats rows as records,\nparses ByteStrings and is biased towards UTF-8 encoding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "csvreplace" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."spreadsheet" or (buildDepError "spreadsheet"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }