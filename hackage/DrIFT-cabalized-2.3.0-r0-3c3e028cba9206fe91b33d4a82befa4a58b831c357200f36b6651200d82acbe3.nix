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
      specVersion = "1.6";
      identifier = { name = "DrIFT-cabalized"; version = "2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gwern <gwern0@gmail.com>, Metasepi team <metasepi@gmail.com>";
      author = "Noel Winstanley, John Meacham <john@repetae.net>";
      homepage = "http://repetae.net/computer/haskell/DrIFT/";
      url = "";
      synopsis = "Program to derive type class instances";
      description = "DrIFT is a type sensitive preprocessor for Haskell. It extracts type declarations\nand directives from modules. The directives cause rules to be fired on the parsed\ntype declarations, generating new code which is then appended to the bottom of the input\nfile. The rules are expressed as Haskell code, and it is intended that the user can add new\nrules as required.\n\nDrIFT automates instance derivation for classes that aren't supported by the standard compilers.\nIn addition, instances can be produced in seperate modules to that containing the type declaration.\nThis allows instances to be derived for a type after the original module has been compiled.\nAs a bonus, simple utility functions can also be produced from a type.\n\nThis package was cabalized by gwern <gwern0@gmail.com>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "DrIFT" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          };
        "drift-ghc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }