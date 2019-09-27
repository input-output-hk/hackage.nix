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
      identifier = { name = "s-cargot-letbind"; version = "0.2.1.0"; };
      license = "ISC";
      copyright = "2018 Kevin Quick";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/GaloisInc/s-cargot-letbind";
      url = "";
      synopsis = "Enables let-binding and let-expansion for s-cargot defined S-expressions.";
      description = "This module allows let bindings to be introduced into the S-Expression\nsyntax.\n\nFor example, instead of:\n\n>    (concat (if (enabled x) (+ (width x) (width y)) (width y))\n>            \" meters\")\n\nthis can be re-written with let bindings:\n\n>    (let ((wy    (width y))\n>          (wboth (+ (width x) wy))\n>          (wide  (if (enabled x) wboth wy))\n>         )\n>      (concat wide \" meters\"))\n\nAs S-expressions grow larger, let-binding can help readability for\nthose expressions.  This module provides the 'discoverLetBindings'\nfunction that will convert an S-expression into one containing\nlet-bound variables, and the inverse function 'letExpand' which will\nexpand let-bound variables back into the expression.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."s-cargot" or (buildDepError "s-cargot"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "s-cargot-printparselet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."s-cargot" or (buildDepError "s-cargot"))
            (hsPkgs."s-cargot-letbind" or (buildDepError "s-cargot-letbind"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }