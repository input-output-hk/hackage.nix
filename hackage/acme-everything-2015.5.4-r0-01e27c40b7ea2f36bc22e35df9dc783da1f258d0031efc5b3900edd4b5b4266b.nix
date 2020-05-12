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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ApproxFun-hs" or (errorHandler.buildDepError "ApproxFun-hs"))
          (hsPkgs."BufferedSocket" or (errorHandler.buildDepError "BufferedSocket"))
          (hsPkgs."Dist" or (errorHandler.buildDepError "Dist"))
          (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
          (hsPkgs."FastxPipe" or (errorHandler.buildDepError "FastxPipe"))
          (hsPkgs."SciFlow" or (errorHandler.buildDepError "SciFlow"))
          (hsPkgs."SeqAlign" or (errorHandler.buildDepError "SeqAlign"))
          (hsPkgs."Shrub" or (errorHandler.buildDepError "Shrub"))
          (hsPkgs."acme-safe" or (errorHandler.buildDepError "acme-safe"))
          (hsPkgs."acme-timemachine" or (errorHandler.buildDepError "acme-timemachine"))
          (hsPkgs."agentx" or (errorHandler.buildDepError "agentx"))
          (hsPkgs."bgzf" or (errorHandler.buildDepError "bgzf"))
          (hsPkgs."bindings-fluidsynth" or (errorHandler.buildDepError "bindings-fluidsynth"))
          (hsPkgs."bitcoin-api" or (errorHandler.buildDepError "bitcoin-api"))
          (hsPkgs."cabocha" or (errorHandler.buildDepError "cabocha"))
          (hsPkgs."cmd-item" or (errorHandler.buildDepError "cmd-item"))
          (hsPkgs."computations" or (errorHandler.buildDepError "computations"))
          (hsPkgs."crypto-classical" or (errorHandler.buildDepError "crypto-classical"))
          (hsPkgs."dbcleaner" or (errorHandler.buildDepError "dbcleaner"))
          (hsPkgs."diagrams-html5" or (errorHandler.buildDepError "diagrams-html5"))
          (hsPkgs."diagrams-pgf" or (errorHandler.buildDepError "diagrams-pgf"))
          (hsPkgs."dicom" or (errorHandler.buildDepError "dicom"))
          (hsPkgs."dove" or (errorHandler.buildDepError "dove"))
          (hsPkgs."ed25519-donna" or (errorHandler.buildDepError "ed25519-donna"))
          (hsPkgs."engine-io-growler" or (errorHandler.buildDepError "engine-io-growler"))
          (hsPkgs."ess" or (errorHandler.buildDepError "ess"))
          (hsPkgs."flamingra" or (errorHandler.buildDepError "flamingra"))
          (hsPkgs."flowlocks-framework" or (errorHandler.buildDepError "flowlocks-framework"))
          (hsPkgs."geniplate-mirror" or (errorHandler.buildDepError "geniplate-mirror"))
          (hsPkgs."ghc-prof-flamegraph" or (errorHandler.buildDepError "ghc-prof-flamegraph"))
          (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
          (hsPkgs."hXmixer" or (errorHandler.buildDepError "hXmixer"))
          (hsPkgs."hashabler" or (errorHandler.buildDepError "hashabler"))
          (hsPkgs."hipbot" or (errorHandler.buildDepError "hipbot"))
          (hsPkgs."hmm-hmatrix" or (errorHandler.buildDepError "hmm-hmatrix"))
          (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
          (hsPkgs."hsreadability" or (errorHandler.buildDepError "hsreadability"))
          (hsPkgs."hutton" or (errorHandler.buildDepError "hutton"))
          (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
          (hsPkgs."ide-backend-server" or (errorHandler.buildDepError "ide-backend-server"))
          (hsPkgs."json-stream" or (errorHandler.buildDepError "json-stream"))
          (hsPkgs."libconfig" or (errorHandler.buildDepError "libconfig"))
          (hsPkgs."list-t-attoparsec" or (errorHandler.buildDepError "list-t-attoparsec"))
          (hsPkgs."list-t-html-parser" or (errorHandler.buildDepError "list-t-html-parser"))
          (hsPkgs."list-t-http-client" or (errorHandler.buildDepError "list-t-http-client"))
          (hsPkgs."list-t-libcurl" or (errorHandler.buildDepError "list-t-libcurl"))
          (hsPkgs."list-t-text" or (errorHandler.buildDepError "list-t-text"))
          (hsPkgs."mfsolve" or (errorHandler.buildDepError "mfsolve"))
          (hsPkgs."microlens-each" or (errorHandler.buildDepError "microlens-each"))
          (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."mockery" or (errorHandler.buildDepError "mockery"))
          (hsPkgs."moonshine" or (errorHandler.buildDepError "moonshine"))
          (hsPkgs."mosaico-lib" or (errorHandler.buildDepError "mosaico-lib"))
          (hsPkgs."mtl-c" or (errorHandler.buildDepError "mtl-c"))
          (hsPkgs."network-transport-amqp" or (errorHandler.buildDepError "network-transport-amqp"))
          (hsPkgs."nf" or (errorHandler.buildDepError "nf"))
          (hsPkgs."one-time-password" or (errorHandler.buildDepError "one-time-password"))
          (hsPkgs."pell" or (errorHandler.buildDepError "pell"))
          (hsPkgs."pgp-wordlist" or (errorHandler.buildDepError "pgp-wordlist"))
          (hsPkgs."random-derive" or (errorHandler.buildDepError "random-derive"))
          (hsPkgs."record-aeson" or (errorHandler.buildDepError "record-aeson"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."rspp" or (errorHandler.buildDepError "rspp"))
          (hsPkgs."sdr" or (errorHandler.buildDepError "sdr"))
          (hsPkgs."sendgrid-haskell" or (errorHandler.buildDepError "sendgrid-haskell"))
          (hsPkgs."singleton-nats" or (errorHandler.buildDepError "singleton-nats"))
          (hsPkgs."smallcheck-series" or (errorHandler.buildDepError "smallcheck-series"))
          (hsPkgs."sorting" or (errorHandler.buildDepError "sorting"))
          (hsPkgs."spline3" or (errorHandler.buildDepError "spline3"))
          (hsPkgs."step-function" or (errorHandler.buildDepError "step-function"))
          (hsPkgs."test-invariant" or (errorHandler.buildDepError "test-invariant"))
          (hsPkgs."text-position" or (errorHandler.buildDepError "text-position"))
          (hsPkgs."th-context" or (errorHandler.buildDepError "th-context"))
          (hsPkgs."th-inline-io-action" or (errorHandler.buildDepError "th-inline-io-action"))
          (hsPkgs."timezone-olson-th" or (errorHandler.buildDepError "timezone-olson-th"))
          (hsPkgs."twentefp-eventloop-trees" or (errorHandler.buildDepError "twentefp-eventloop-trees"))
          (hsPkgs."wai-request-spec" or (errorHandler.buildDepError "wai-request-spec"))
          (hsPkgs."yesod-gitrev" or (errorHandler.buildDepError "yesod-gitrev"))
          (hsPkgs."yesod-transloadit" or (errorHandler.buildDepError "yesod-transloadit"))
          ];
        buildable = true;
        };
      };
    }