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
      identifier = { name = "is"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "project-is@lopezjuan.com";
      author = "Víctor López Juan <victor@lopezjuan.com>";
      homepage = "";
      url = "";
      synopsis = "Generic pattern predicates";
      description = "Generate predicates of type (t → Bool) from constructors or patterns of type t.\nUses either Template Haskell or instances of Generic or Typeable.\nGenerating predicates from arbitrary patterns requires TH.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."template-haskell" or (buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."template-haskell" or (buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."template-haskell" or (buildDepError "template-haskell"));
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."is" or (buildDepError "is"))
            ];
          };
        };
      };
    }