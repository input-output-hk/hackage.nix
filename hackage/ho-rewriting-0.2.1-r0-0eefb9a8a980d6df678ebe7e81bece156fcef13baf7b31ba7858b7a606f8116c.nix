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
      identifier = { name = "ho-rewriting"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/ho-rewriting";
      url = "";
      synopsis = "Generic rewrite rules with safe treatment of variables and binders";
      description = "This package gives a generic implementation of higher-order\nrewriting. The main idea is to use techniques from embedded\ndomain-specific languages to offer an interface which is\nboth safe and syntactically appealing.\n\nSome examples are found in the @examples@ directory. For\nmore information, see\n\\\"Lightweight Higher-Order Rewriting in Haskell\\\" (presented at TFP 2015):\n\n* Paper: <https://emilaxelsson.github.io/documents/axelsson2015lightweight.pdf>\n\n* Slides: <https://emilaxelsson.github.io/documents/axelsson2015lightweight_slides.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."compdata" or (buildDepError "compdata"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."patch-combinators" or (buildDepError "patch-combinators"))
          ];
        };
      tests = {
        "capture" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."compdata" or (buildDepError "compdata"))
            (hsPkgs."ho-rewriting" or (buildDepError "ho-rewriting"))
            (hsPkgs."patch-combinators" or (buildDepError "patch-combinators"))
            ];
          };
        };
      };
    }