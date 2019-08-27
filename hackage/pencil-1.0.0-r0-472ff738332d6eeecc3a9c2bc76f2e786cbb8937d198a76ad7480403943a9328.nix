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
      identifier = { name = "pencil"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Elben Shira";
      maintainer = "elben@shira.im";
      author = "Elben Shira";
      homepage = "https://github.com/elben/pencil";
      url = "";
      synopsis = "Static site generator";
      description = "Pencil is a static site generator. Use Pencil to build a personal website, a\nblog, and more. Pencil comes pre-loaded with goodies such as Markdown and\nSass/Scss support, templating, blogging, and tagging. Designed with the\nHaskell beginner in mind, but flexible enough to extend for your own needs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hsass" or (buildDepError "hsass"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      tests = {
        "pencil-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pencil" or (buildDepError "pencil"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "pencil-example-simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pencil" or (buildDepError "pencil"))
            ];
          };
        "pencil-example-blog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pencil" or (buildDepError "pencil"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "pencil-example-complex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pencil" or (buildDepError "pencil"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "pencil-docs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pencil" or (buildDepError "pencil"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }