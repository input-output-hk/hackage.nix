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
      specVersion = "1.2.1";
      identifier = { name = "EEConfig"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Bartosz Wójcik";
      maintainer = "Bartosz Wojcik <bartek@sudety.it>";
      author = "Bartosz Wojcik <bartek@sudety.it>";
      homepage = "";
      url = "";
      synopsis = "ExtremlyEasyConfig - Extremly Simple parser for config files";
      description = "Implementation of a very simple parser for parameters recognition.\nIt recognizes given parameters and their values.\nAs input it becomes list of parameters and all their possible values in format [ParameterInput]\nand input String where parameters will be searched for.\nAs output it deliveres recognized parameters and their values in format [ParameterOutput],\nwhere only these parameters are present which have been found in the input string.\nIn output list each exisitng parameter has exactly one value - this one that has\nbeen recognized in the input string.\nParameters in the input string have to be always given in following format:\n(\\<flagname> \\<parameter>)*.\nAnything what is not recognized as parameter or value is ignored.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      };
    }