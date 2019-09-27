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
    flags = {
      hpc = false;
      library-only = false;
      release = false;
      bench = false;
      prof = false;
      threadscope = false;
      };
    package = {
      specVersion = "1.14";
      identifier = { name = "hermes"; version = "1.3.4.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "-";
      author = "-";
      homepage = "";
      url = "";
      synopsis = "";
      description = "-";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."rncryptor" or (buildDepError "rncryptor"))
          (hsPkgs."amqp" or (buildDepError "amqp"))
          (hsPkgs."atlas" or (buildDepError "atlas"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."api-tools" or (buildDepError "api-tools"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."annotated-wl-pprint" or (buildDepError "annotated-wl-pprint"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."auto-update" or (buildDepError "auto-update"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."ixset-typed" or (buildDepError "ixset-typed"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."resource-pool-catchio" or (buildDepError "resource-pool-catchio"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."threads-supervisor" or (buildDepError "threads-supervisor"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
          (hsPkgs."postgresql-simple-sop" or (buildDepError "postgresql-simple-sop"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "hermes" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."atlas" or (buildDepError "atlas"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."hackage-uploader" or (buildDepError "hackage-uploader"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hermes" or (buildDepError "hermes"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "hermes-docs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hastache" or (buildDepError "hastache"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            (hsPkgs."hermes" or (buildDepError "hermes"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "hermes-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."amqp" or (buildDepError "amqp"))
            (hsPkgs."atlas" or (buildDepError "atlas"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."ekg" or (buildDepError "ekg"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."statsd-datadog" or (buildDepError "statsd-datadog"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."snap-cors" or (buildDepError "snap-cors"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-loader-static" or (buildDepError "snap-loader-static"))
            (hsPkgs."snaplet-postgresql-simple" or (buildDepError "snaplet-postgresql-simple"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."resource-pool-catchio" or (buildDepError "resource-pool-catchio"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."threads-supervisor" or (buildDepError "threads-supervisor"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."hermes" or (buildDepError "hermes"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "hermes-progress" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."atlas" or (buildDepError "atlas"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."hermes" or (buildDepError "hermes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "hermes-tests" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."amqp" or (buildDepError "amqp"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."atlas" or (buildDepError "atlas"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."api-tools" or (buildDepError "api-tools"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."statsd-datadog" or (buildDepError "statsd-datadog"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."threads-supervisor" or (buildDepError "threads-supervisor"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hermes" or (buildDepError "hermes"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "hermes-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."hermes" or (buildDepError "hermes"))
            ];
          buildable = if flags.bench then true else false;
          };
        };
      };
    }