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
      identifier = { name = "prometheus-effect"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/ocharles/prometheus-effect";
      url = "";
      synopsis = "Instrument applications with metrics and publish/push to Prometheus";
      description = "[Prometheus](https://prometheus.io) is an open-source systems monitoring and\nalerting toolkit originally built at SoundCloud. Since its inception in 2012,\nmany companies and organizations have adopted Prometheus, and the project has a\nvery active developer and user community. It is now a standalone open source\nproject and maintained independently of any company. To emphasize this and\nclarify the project's governance structure, Prometheus joined the Cloud Native\nComputing Foundation in 2016 as the second hosted project after Kubernetes.\n\nThis library provides a Haskell client to Prometheus. It supports:\n\n* The metric types __counter__, __gauge__ and __histogram__.\n* Publishing metrics over HTTP (via WAI middleware).\n* Pushing metrics to the Prometheus push gateway.\n* Labels, along with dynamic labels.\n* Instrumentation, both for internal Prometheus monitoring and GHC statistics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-streams" or (buildDepError "http-streams"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-wai" or (buildDepError "streaming-wai"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }