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
    flags = { build-demos = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-azure"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Microsoft Azure backend for Cloud Haskell";
      description = "This is a proof of concept Azure backend for Cloud Haskell. It\nprovides just enough functionality to run Cloud Haskell\napplications on Azure virtual machines. You need to create your\nvirtual machines in the Azure management portal; you can then\nuse this backend to copy or verify your executable to the\nvirtual machine, start or terminate Cloud Haskell nodes on those\nvirtual machines, and communicate with those virtual machines\nfrom your local machine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."azure-service-api" or (buildDepError "azure-service-api"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."libssh2" or (buildDepError "libssh2"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."network-transport" or (buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."certificate" or (buildDepError "certificate"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."rank1dynamic" or (buildDepError "rank1dynamic"))
          (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
          ];
        buildable = true;
        };
      exes = {
        "cloud-haskell-azure-echo" = {
          depends = (pkgs.lib).optionals (flags.build-demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-azure" or (buildDepError "distributed-process-azure"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if flags.build-demos then true else false;
          };
        "cloud-haskell-azure-ping" = {
          depends = (pkgs.lib).optionals (flags.build-demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-azure" or (buildDepError "distributed-process-azure"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."libssh2" or (buildDepError "libssh2"))
            ];
          buildable = if flags.build-demos then true else false;
          };
        "cloud-haskell-azure-fib" = {
          depends = (pkgs.lib).optionals (flags.build-demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-azure" or (buildDepError "distributed-process-azure"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-generic" or (buildDepError "binary-generic"))
            (hsPkgs."rank1dynamic" or (buildDepError "rank1dynamic"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if flags.build-demos then true else false;
          };
        };
      };
    }