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
      identifier = { name = "antiquoter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Lars Corbijn";
      maintainer = "aspergesoepje@gmail.com";
      author = "Lars Corbijn";
      homepage = "";
      url = "";
      synopsis = "Combinator library for quasi- and anti-quoting.";
      description = "A combinator library to improve the building of anti-quoters.\nEspecially aimed at making user extensible antiquoters and\nremoving copy-and-paste programming from their definition.\n\nThe modules are\n\n* \"Language.Haskell.AntiQuoter.Base\" basic type aliases for\nbuilding antiquoters.\n\n* \"Language.Haskell.AntiQuoter.ExpPat\" making antiquoters which\ncan result in expressions as well as patters. Therefore only\none antiquoter has to be defined in stead of two.\n\n* \"Language.Haskell.AntiQuoter.Combinators\" more useful\ncombinators to use with the functions from\n\"Language.Haskell.AntiQuoter.ExpPat\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ];
        };
      };
    }