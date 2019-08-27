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
      identifier = { name = "wrecker"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jose.zap@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/lorenzo/wrecker#readme";
      url = "";
      synopsis = "An HTTP Performance Benchmarker";
      description = "'wrecker' is a library and executable for creating HTTP benchmarks. It is designed for\nbenchmarking a series of dependent requests.\n'wrecker' includes a wrapped version of the `wreq` Session API\n, mainly through 'Network.Wreq.Wrecker'.\nSee <https://github.com/lorenzo/wrecker#readme> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."ansigraph" or (buildDepError "ansigraph"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."clock-extras" or (buildDepError "clock-extras"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."immortal" or (buildDepError "immortal"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."next-ref" or (buildDepError "next-ref"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."tabular" or (buildDepError "tabular"))
          (hsPkgs."tdigest" or (buildDepError "tdigest"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."threads" or (buildDepError "threads"))
          (hsPkgs."threads-extras" or (buildDepError "threads-extras"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          ];
        };
      exes = {
        "wreck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wrecker" or (buildDepError "wrecker"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            ];
          };
        };
      };
    }