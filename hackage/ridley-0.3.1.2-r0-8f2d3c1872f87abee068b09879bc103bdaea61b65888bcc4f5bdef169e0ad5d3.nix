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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ridley"; version = "0.3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 IRIS Connect Ltd.";
      maintainer = "alfredo@irisconnect.co.uk";
      author = "Alfredo Di Napoli & the IRIS Connect Engineering Team";
      homepage = "https://github.com/iconnect/ridley#README";
      url = "";
      synopsis = "Quick metrics to grow your app strong.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."katip" or (buildDepError "katip"))
          (hsPkgs."wai-middleware-metrics" or (buildDepError "wai-middleware-metrics"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."prometheus" or (buildDepError "prometheus"))
          (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."ekg-prometheus-adapter" or (buildDepError "ekg-prometheus-adapter"))
          (hsPkgs."inline-c" or (buildDepError "inline-c"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        buildable = true;
        };
      tests = {
        "ridley-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."ridley" or (buildDepError "ridley"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."prometheus" or (buildDepError "prometheus"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."ekg-prometheus-adapter" or (buildDepError "ekg-prometheus-adapter"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            ];
          buildable = true;
          };
        };
      };
    }