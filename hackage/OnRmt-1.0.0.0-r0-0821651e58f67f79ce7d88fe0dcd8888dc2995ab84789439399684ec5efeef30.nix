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
    flags = { brick017 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "OnRmt"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Kevin Quick, 2013-2017";
      maintainer = "<quick@sparq.org>";
      author = "Kevin Quick <quick@sparq.org>";
      homepage = "";
      url = "";
      synopsis = "Text UI library for performing parallel remote SSH operations";
      description = "This library provides the ability to coordinate the remote ssh\nexecution of commands on target nodes and display the results in a\nconsole interface.  The console interface can either be a cmdline\n(CLI) or a text interface (TUI), based on brick and vty; support is\nprovided for extension to other UI components as well.\n\nAlmost all of the functionality is provided in the library itself;\nit just needs an executable that will invoke it with the set of\nremote nodes.  See the 'GetRemotes.hs' file for an example: remotes\ncan be of any type that is an instance of @WorkEntry@ with an\nassociated @WorkGroup@ grouping.\n\nThere is an onrmttest executable built that showcases the\nfunctionality using ssh operations to localhost, and a\ncorresponding onrmttestline executable that provides a simple CLI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."brick" or (buildDepError "brick"))
          (hsPkgs."itemfield" or (buildDepError "itemfield"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."listsafe" or (buildDepError "listsafe"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."repl-toolkit" or (buildDepError "repl-toolkit"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      exes = {
        "onrmtssh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OnRmt" or (buildDepError "OnRmt"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."itemfield" or (buildDepError "itemfield"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."ssh-known-hosts" or (buildDepError "ssh-known-hosts"))
            ];
          };
        "onrmtsample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OnRmt" or (buildDepError "OnRmt"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."itemfield" or (buildDepError "itemfield"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        "onrmtsamplecli" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OnRmt" or (buildDepError "OnRmt"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."listsafe" or (buildDepError "listsafe"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."repl-toolkit" or (buildDepError "repl-toolkit"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      tests = {
        "test_ops" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."itemfield" or (buildDepError "itemfield"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            ];
          };
        };
      };
    }