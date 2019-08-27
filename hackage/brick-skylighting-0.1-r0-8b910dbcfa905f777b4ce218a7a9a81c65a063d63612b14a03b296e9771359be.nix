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
    flags = { demos = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "brick-skylighting"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Daugherty 2018";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty";
      homepage = "https://github.com/jtdaugherty/brick-skylighting/";
      url = "";
      synopsis = "Show syntax-highlighted text in your Brick UI";
      description = "This package provides a module to use Skylighting to perform\nsyntax highlighting and display the results in Brick-based\ninterfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."brick" or (buildDepError "brick"))
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."skylighting" or (buildDepError "skylighting"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "brick-skylighting-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."brick-skylighting" or (buildDepError "brick-skylighting"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."skylighting" or (buildDepError "skylighting"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }