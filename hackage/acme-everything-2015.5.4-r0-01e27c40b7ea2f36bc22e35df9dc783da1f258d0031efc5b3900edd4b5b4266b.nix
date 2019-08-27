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
      identifier = { name = "acme-everything"; version = "2015.5.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      author = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      homepage = "https://github.com/quchen/acme-everything";
      url = "";
      synopsis = "Install everything.";
      description = "Install everything.\n\nDon't be fooled by the small dependency footprint: the\nentirety of Hackage needs to be installed for this, and\nmost of it is done via transitive dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ApproxFun-hs" or (buildDepError "ApproxFun-hs"))
          (hsPkgs."BufferedSocket" or (buildDepError "BufferedSocket"))
          (hsPkgs."Dist" or (buildDepError "Dist"))
          (hsPkgs."Earley" or (buildDepError "Earley"))
          (hsPkgs."FastxPipe" or (buildDepError "FastxPipe"))
          (hsPkgs."SciFlow" or (buildDepError "SciFlow"))
          (hsPkgs."SeqAlign" or (buildDepError "SeqAlign"))
          (hsPkgs."Shrub" or (buildDepError "Shrub"))
          (hsPkgs."acme-safe" or (buildDepError "acme-safe"))
          (hsPkgs."acme-timemachine" or (buildDepError "acme-timemachine"))
          (hsPkgs."agentx" or (buildDepError "agentx"))
          (hsPkgs."bgzf" or (buildDepError "bgzf"))
          (hsPkgs."bindings-fluidsynth" or (buildDepError "bindings-fluidsynth"))
          (hsPkgs."bitcoin-api" or (buildDepError "bitcoin-api"))
          (hsPkgs."cabocha" or (buildDepError "cabocha"))
          (hsPkgs."cmd-item" or (buildDepError "cmd-item"))
          (hsPkgs."computations" or (buildDepError "computations"))
          (hsPkgs."crypto-classical" or (buildDepError "crypto-classical"))
          (hsPkgs."dbcleaner" or (buildDepError "dbcleaner"))
          (hsPkgs."diagrams-html5" or (buildDepError "diagrams-html5"))
          (hsPkgs."diagrams-pgf" or (buildDepError "diagrams-pgf"))
          (hsPkgs."dicom" or (buildDepError "dicom"))
          (hsPkgs."dove" or (buildDepError "dove"))
          (hsPkgs."ed25519-donna" or (buildDepError "ed25519-donna"))
          (hsPkgs."engine-io-growler" or (buildDepError "engine-io-growler"))
          (hsPkgs."ess" or (buildDepError "ess"))
          (hsPkgs."flamingra" or (buildDepError "flamingra"))
          (hsPkgs."flowlocks-framework" or (buildDepError "flowlocks-framework"))
          (hsPkgs."geniplate-mirror" or (buildDepError "geniplate-mirror"))
          (hsPkgs."ghc-prof-flamegraph" or (buildDepError "ghc-prof-flamegraph"))
          (hsPkgs."gll" or (buildDepError "gll"))
          (hsPkgs."hXmixer" or (buildDepError "hXmixer"))
          (hsPkgs."hashabler" or (buildDepError "hashabler"))
          (hsPkgs."hipbot" or (buildDepError "hipbot"))
          (hsPkgs."hmm-hmatrix" or (buildDepError "hmm-hmatrix"))
          (hsPkgs."hpack" or (buildDepError "hpack"))
          (hsPkgs."hsreadability" or (buildDepError "hsreadability"))
          (hsPkgs."hutton" or (buildDepError "hutton"))
          (hsPkgs."hvect" or (buildDepError "hvect"))
          (hsPkgs."ide-backend-server" or (buildDepError "ide-backend-server"))
          (hsPkgs."json-stream" or (buildDepError "json-stream"))
          (hsPkgs."libconfig" or (buildDepError "libconfig"))
          (hsPkgs."list-t-attoparsec" or (buildDepError "list-t-attoparsec"))
          (hsPkgs."list-t-html-parser" or (buildDepError "list-t-html-parser"))
          (hsPkgs."list-t-http-client" or (buildDepError "list-t-http-client"))
          (hsPkgs."list-t-libcurl" or (buildDepError "list-t-libcurl"))
          (hsPkgs."list-t-text" or (buildDepError "list-t-text"))
          (hsPkgs."mfsolve" or (buildDepError "mfsolve"))
          (hsPkgs."microlens-each" or (buildDepError "microlens-each"))
          (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."mockery" or (buildDepError "mockery"))
          (hsPkgs."moonshine" or (buildDepError "moonshine"))
          (hsPkgs."mosaico-lib" or (buildDepError "mosaico-lib"))
          (hsPkgs."mtl-c" or (buildDepError "mtl-c"))
          (hsPkgs."network-transport-amqp" or (buildDepError "network-transport-amqp"))
          (hsPkgs."nf" or (buildDepError "nf"))
          (hsPkgs."one-time-password" or (buildDepError "one-time-password"))
          (hsPkgs."pell" or (buildDepError "pell"))
          (hsPkgs."pgp-wordlist" or (buildDepError "pgp-wordlist"))
          (hsPkgs."random-derive" or (buildDepError "random-derive"))
          (hsPkgs."record-aeson" or (buildDepError "record-aeson"))
          (hsPkgs."refined" or (buildDepError "refined"))
          (hsPkgs."rspp" or (buildDepError "rspp"))
          (hsPkgs."sdr" or (buildDepError "sdr"))
          (hsPkgs."sendgrid-haskell" or (buildDepError "sendgrid-haskell"))
          (hsPkgs."singleton-nats" or (buildDepError "singleton-nats"))
          (hsPkgs."smallcheck-series" or (buildDepError "smallcheck-series"))
          (hsPkgs."sorting" or (buildDepError "sorting"))
          (hsPkgs."spline3" or (buildDepError "spline3"))
          (hsPkgs."step-function" or (buildDepError "step-function"))
          (hsPkgs."test-invariant" or (buildDepError "test-invariant"))
          (hsPkgs."text-position" or (buildDepError "text-position"))
          (hsPkgs."th-context" or (buildDepError "th-context"))
          (hsPkgs."th-inline-io-action" or (buildDepError "th-inline-io-action"))
          (hsPkgs."timezone-olson-th" or (buildDepError "timezone-olson-th"))
          (hsPkgs."twentefp-eventloop-trees" or (buildDepError "twentefp-eventloop-trees"))
          (hsPkgs."wai-request-spec" or (buildDepError "wai-request-spec"))
          (hsPkgs."yesod-gitrev" or (buildDepError "yesod-gitrev"))
          (hsPkgs."yesod-transloadit" or (buildDepError "yesod-transloadit"))
          ];
        };
      };
    }