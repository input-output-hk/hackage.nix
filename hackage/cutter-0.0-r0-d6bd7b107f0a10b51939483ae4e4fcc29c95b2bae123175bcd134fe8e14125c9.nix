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
      identifier = { name = "cutter"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Cut files according to a position list";
      description = "Cut a file into chunks according to a position list\nand concatenate the chunks.\nThe chunks must not overlap and must be in increasing order.\n\nUse it this way:\n\n> cutter positions.csv <datain >dataout\n\nThe file @positions.csv@ must be a comma separated spreadsheet file (CSV),\nwhere the first column contains the chunk beginnings\nand the second column contains the pause beginnings.\nA pause begins one byte after a chunk ends.\nThe other columns are ignored and may contain annotations of the chunks.\n\nThe positions file may also contain line numbers.\nIn this case you run the command this way:\n\n> cutter -l positions.csv <datain >dataout\n\nExample: remove selected attachments from e-mails in mbox file\nusing the @lsmbox@ command from <http://hackage.haskell.org/package/mbox-utility>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cutter" = {
          depends = [
            (hsPkgs."spreadsheet" or (buildDepError "spreadsheet"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }