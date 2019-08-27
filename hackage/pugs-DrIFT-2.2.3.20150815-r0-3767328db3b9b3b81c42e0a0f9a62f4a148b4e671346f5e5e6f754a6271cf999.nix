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
      identifier = { name = "pugs-DrIFT"; version = "2.2.3.20150815"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Noel Winstanley";
      homepage = "http://pugscode.org/";
      url = "";
      synopsis = "DrIFT with pugs-specific rules.";
      description = "DrIFT is a type sensitive preprocessor for Haskell. It extracts type declarations\nand directives from modules. The directives cause rules to be fired on the parsed\ntype declarations, generating new code which is then appended to the bottom of the input\nfile. The rules are expressed as Haskell code, and it is intended that the user can add new\nrules as required.\nDrIFT automates instance derivation for classes that aren't supported by the standard compilers.\nIn addition, instances can be produced in seperate modules to that containing the type declaration.\nThis allows instances to be derived for a type after the original module has been compiled.\nAs a bonus, simple utility functions can also be produced from a type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."HsSyck" or (buildDepError "HsSyck"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      exes = {
        "pugs-DrIFT" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."HsSyck" or (buildDepError "HsSyck"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."pugs-DrIFT" or (buildDepError "pugs-DrIFT"))
            ];
          };
        };
      };
    }