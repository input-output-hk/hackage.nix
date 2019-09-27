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
      identifier = { name = "constraints-emerge"; version = "0.1"; };
      license = "MIT";
      copyright = "2018 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/constraints-emerge";
      url = "";
      synopsis = "Defer instance lookups until runtime";
      description = "This plugin allows you to write\n\n@\n&#123;&#45;\\# OPTIONS_GHC -fplugin Data.Constraint.Emerge.Plugin \\#&#45;&#125;\nmodule Test where\n\nimport Data.Constraint.Emerge\n\nshowAnything :: forall c. Emerge (Show c) => c -> String\nshowAnything c =\ncase emerge @(Show c) of\nJust Dict -> show c\nNothing   -> \"<<unshowable>>\"\n@\n\nSee <https://github.com/isovector/constraints-emerge/blob/master/test/EmergeSpec.hs test/EmergeSpec.hs>\nfor a few examples of what this plugin can do for you.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."constraints-emerge" or (buildDepError "constraints-emerge"))
            ];
          buildable = true;
          };
        };
      };
    }