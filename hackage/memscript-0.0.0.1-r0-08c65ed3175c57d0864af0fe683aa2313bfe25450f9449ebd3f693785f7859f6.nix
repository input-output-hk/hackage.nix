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
      specVersion = "1.2";
      identifier = { name = "memscript"; version = "0.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "http://kyagrd.dyndns.org/wiki/MemScript";
      url = "";
      synopsis = "Command line utility for memorizing scriptures or any other text";
      description = "\"memscript <filename>\"\nRun memscript with a UTF-8 (or ASCII since ASCII is a subset of UTF8) plain\ntext file.  Try to exactly guess the text line by line.  If your guess is\nwrong it will show you a diff like output comparing your guess and the\noriginal verse.  This will repeat until you get all the verses right.\nI included four belvoed Plsams (1,23,121,127) from the Old Testament,\neach in Revised Korean Version (RKV) and New International Version (NIV),\nwhich I happend to have had to memorize.  You can use it for any other\ntext you'd want to memorize, such as your favorite poems, quotes, or\nwhatsoever.\nNo craft or ticks, really simple and straightforward untility but serves\nwell for the purpose.  I used readline because that was the only sane way\nI know of handling multibyte inputs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "memscript" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      };
    }