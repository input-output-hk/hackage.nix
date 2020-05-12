{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."itemfield" or (errorHandler.buildDepError "itemfield"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."listsafe" or (errorHandler.buildDepError "listsafe"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."repl-toolkit" or (errorHandler.buildDepError "repl-toolkit"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = {
        "onrmtssh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OnRmt" or (errorHandler.buildDepError "OnRmt"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."itemfield" or (errorHandler.buildDepError "itemfield"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."ssh-known-hosts" or (errorHandler.buildDepError "ssh-known-hosts"))
            ];
          buildable = true;
          };
        "onrmtsample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OnRmt" or (errorHandler.buildDepError "OnRmt"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."itemfield" or (errorHandler.buildDepError "itemfield"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        "onrmtsamplecli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OnRmt" or (errorHandler.buildDepError "OnRmt"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."listsafe" or (errorHandler.buildDepError "listsafe"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."repl-toolkit" or (errorHandler.buildDepError "repl-toolkit"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test_ops" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."itemfield" or (errorHandler.buildDepError "itemfield"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            ];
          buildable = true;
          };
        };
      };
    }