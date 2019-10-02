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
      identifier = { name = "hnock"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.io";
      author = "Jared Tobin";
      homepage = "https://github.com/jtobin/hnock";
      url = "";
      synopsis = "A Nock interpreter.";
      description = "A Nock interpreter.\n\nFrom the shell, simply pipe Nock expressions into the hnock executable:\n\n> \$ echo '*[[[4 5] [6 14 15]] [0 7]]' | hnock\n> [14 15]\n\nFor playing around in GHCi, import the Nock library and use hnock to parse\nand evaluate Nock expressions:\n\n> *Nock> hnock \"*[[[4 5] [6 14 15]] [0 7]]\"\n> [14 15]\n\nTo evaluate raw nock Nouns, i.e. to compute nock(a) for some noun a, use the\n'nock' function:\n\n> *Nock> let expression = hnock \"[[[4 5] [6 14 15]] [0 7]]\"\n> *Nock> expression\n> [[[4 5] [6 [14 15]]] [0 7]]\n> *Nock> nock expression\n> [14 15]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "hnock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hnock" or (buildDepError "hnock"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hnock-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hnock" or (buildDepError "hnock"))
            ];
          buildable = true;
          };
        };
      };
    }