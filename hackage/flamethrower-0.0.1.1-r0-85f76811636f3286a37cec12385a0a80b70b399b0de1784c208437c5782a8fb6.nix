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
      specVersion = "1.10";
      identifier = { name = "flamethrower"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "campersander@gmail.com";
      author = "Charmander";
      homepage = "https://charmander.me/flamethrower/";
      url = "";
      synopsis = "A template engine for HTML";
      description = "Flamethrower is a simpler indentation-based template language for HTML.\n\nIt’s intended to be a port of <https://github.com/charmander/razorleaf Razor Leaf>,\nbut it has quite a ways to go before reaching that status.\n\n>(-# LANGUAGE QuasiQuotes #-) -- Parentheses here should be curly braces\n>\n>import Flamethrower\n>\n>render name = [flamethrower|\n>p id: \"greeting\"\n>    \"Hello, \"\n>    em \"#(name)\" # Parentheses here should be curly braces\n>    \"!\"\n>|]\n>\n>main = putStrLn (render \"world\")\n>\n>-- <p id=\"greeting\">Hello, <em>world</em>!</p>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          ];
        };
      };
    }