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
      specVersion = "1.18";
      identifier = { name = "task-distribution"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Axel Mannhardt";
      maintainer = "7a3ggptwts@snkmail.com";
      author = "Axel Mannhardt";
      homepage = "http://github.com/michaxm/task-distribution#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."packman" or (buildDepError "packman"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
          (hsPkgs."rank1dynamic" or (buildDepError "rank1dynamic"))
          (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."hadoop-rpc" or (buildDepError "hadoop-rpc"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."async" or (buildDepError "async"))
          ];
        };
      exes = {
        "slave" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."task-distribution" or (buildDepError "task-distribution"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."task-distribution" or (buildDepError "task-distribution"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "task-distribution-object-code-remote" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."hadoop-rpc" or (buildDepError "hadoop-rpc"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            ];
          };
        "run-demo-task" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        "test-visit-performance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      tests = {
        "test-node-matching" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."task-distribution" or (buildDepError "task-distribution"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."packman" or (buildDepError "packman"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."rank1dynamic" or (buildDepError "rank1dynamic"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hadoop-rpc" or (buildDepError "hadoop-rpc"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            ];
          };
        };
      };
    }