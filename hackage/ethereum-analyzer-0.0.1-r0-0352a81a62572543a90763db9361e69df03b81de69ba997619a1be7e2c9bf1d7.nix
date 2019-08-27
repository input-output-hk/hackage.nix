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
      identifier = { name = "ethereum-analyzer"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/ethereumK/ethereum-analyzer";
      url = "";
      synopsis = "A Ethereum contract analyzer.";
      description = "A Ethereum contract analyzer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ethereum-analyzer-deps" or (buildDepError "ethereum-analyzer-deps"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."hexstring" or (buildDepError "hexstring"))
          (hsPkgs."hflags" or (buildDepError "hflags"))
          (hsPkgs."hoopl" or (buildDepError "hoopl"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."json-rpc" or (buildDepError "json-rpc"))
          (hsPkgs."logging-effect" or (buildDepError "logging-effect"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."prometheus-client" or (buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or (buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-prometheus" or (buildDepError "wai-middleware-prometheus"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          ];
        };
      exes = {
        "ethereum-analyzer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ethereum-analyzer" or (buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or (buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."hflags" or (buildDepError "hflags"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            ];
          };
        "ea-dump-contract" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ethereum-analyzer" or (buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or (buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."hflags" or (buildDepError "hflags"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."ethereum-analyzer" or (buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or (buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."hoopl" or (buildDepError "hoopl"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }