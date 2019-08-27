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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "threepenny-editors"; version = "0.5.6.1"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://github.com/pepeiborra/threepenny-editors";
      url = "";
      synopsis = "Composable algebraic editors";
      description = "This package provides a type class 'Editable' and combinators to\neasily put together form-like editors for algebraic datatypes.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-editors -fbuildExamples@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."casing" or (buildDepError "casing"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
          ];
        };
      exes = {
        "crud" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."casing" or (buildDepError "casing"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."threepenny-editors" or (buildDepError "threepenny-editors"))
            ];
          };
        "crud2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."casing" or (buildDepError "casing"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."threepenny-editors" or (buildDepError "threepenny-editors"))
            ];
          };
        "parser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."casing" or (buildDepError "casing"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."threepenny-editors" or (buildDepError "threepenny-editors"))
            ];
          };
        "person" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."casing" or (buildDepError "casing"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optional (flags.buildexamples) (hsPkgs."threepenny-editors" or (buildDepError "threepenny-editors"));
          };
        "person2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."casing" or (buildDepError "casing"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optional (flags.buildexamples) (hsPkgs."threepenny-editors" or (buildDepError "threepenny-editors"));
          };
        };
      };
    }