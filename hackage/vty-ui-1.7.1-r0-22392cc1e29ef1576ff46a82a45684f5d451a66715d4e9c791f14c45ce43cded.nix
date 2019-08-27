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
    flags = { no-tests = false; demos = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "vty-ui"; version = "1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "http://jtdaugherty.github.com/vty-ui/";
      url = "";
      synopsis = "An interactive terminal user interface library for Vty";
      description = "An extensible library of user interface widgets for composing and\nlaying out Vty user interfaces.  This library provides a collection\nof widgets for building and composing interactive,\nevent-driven terminal interfaces.  This library is intended to make\nnon-trivial user interfaces easy to express and modify without\nhaving to worry about terminal size.\n\nBe sure to check out the user manual for the version you're using\nat: <http://jtdaugherty.github.com/vty-ui/>\n\nBuild with the 'demos' flag to get a set of demonstration programs\nto see some of the things the library can do!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "vty-ui-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-collection-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-list-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-progressbar-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-complex-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-dirbrowser-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-phoneinput-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-dialog-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        "vty-ui-edit-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            ];
          };
        };
      };
    }