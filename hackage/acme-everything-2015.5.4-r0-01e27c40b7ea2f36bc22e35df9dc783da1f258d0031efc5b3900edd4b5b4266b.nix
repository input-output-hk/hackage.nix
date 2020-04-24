{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ApproxFun-hs" or ((hsPkgs.pkgs-errors).buildDepError "ApproxFun-hs"))
          (hsPkgs."BufferedSocket" or ((hsPkgs.pkgs-errors).buildDepError "BufferedSocket"))
          (hsPkgs."Dist" or ((hsPkgs.pkgs-errors).buildDepError "Dist"))
          (hsPkgs."Earley" or ((hsPkgs.pkgs-errors).buildDepError "Earley"))
          (hsPkgs."FastxPipe" or ((hsPkgs.pkgs-errors).buildDepError "FastxPipe"))
          (hsPkgs."SciFlow" or ((hsPkgs.pkgs-errors).buildDepError "SciFlow"))
          (hsPkgs."SeqAlign" or ((hsPkgs.pkgs-errors).buildDepError "SeqAlign"))
          (hsPkgs."Shrub" or ((hsPkgs.pkgs-errors).buildDepError "Shrub"))
          (hsPkgs."acme-safe" or ((hsPkgs.pkgs-errors).buildDepError "acme-safe"))
          (hsPkgs."acme-timemachine" or ((hsPkgs.pkgs-errors).buildDepError "acme-timemachine"))
          (hsPkgs."agentx" or ((hsPkgs.pkgs-errors).buildDepError "agentx"))
          (hsPkgs."bgzf" or ((hsPkgs.pkgs-errors).buildDepError "bgzf"))
          (hsPkgs."bindings-fluidsynth" or ((hsPkgs.pkgs-errors).buildDepError "bindings-fluidsynth"))
          (hsPkgs."bitcoin-api" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-api"))
          (hsPkgs."cabocha" or ((hsPkgs.pkgs-errors).buildDepError "cabocha"))
          (hsPkgs."cmd-item" or ((hsPkgs.pkgs-errors).buildDepError "cmd-item"))
          (hsPkgs."computations" or ((hsPkgs.pkgs-errors).buildDepError "computations"))
          (hsPkgs."crypto-classical" or ((hsPkgs.pkgs-errors).buildDepError "crypto-classical"))
          (hsPkgs."dbcleaner" or ((hsPkgs.pkgs-errors).buildDepError "dbcleaner"))
          (hsPkgs."diagrams-html5" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-html5"))
          (hsPkgs."diagrams-pgf" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-pgf"))
          (hsPkgs."dicom" or ((hsPkgs.pkgs-errors).buildDepError "dicom"))
          (hsPkgs."dove" or ((hsPkgs.pkgs-errors).buildDepError "dove"))
          (hsPkgs."ed25519-donna" or ((hsPkgs.pkgs-errors).buildDepError "ed25519-donna"))
          (hsPkgs."engine-io-growler" or ((hsPkgs.pkgs-errors).buildDepError "engine-io-growler"))
          (hsPkgs."ess" or ((hsPkgs.pkgs-errors).buildDepError "ess"))
          (hsPkgs."flamingra" or ((hsPkgs.pkgs-errors).buildDepError "flamingra"))
          (hsPkgs."flowlocks-framework" or ((hsPkgs.pkgs-errors).buildDepError "flowlocks-framework"))
          (hsPkgs."geniplate-mirror" or ((hsPkgs.pkgs-errors).buildDepError "geniplate-mirror"))
          (hsPkgs."ghc-prof-flamegraph" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prof-flamegraph"))
          (hsPkgs."gll" or ((hsPkgs.pkgs-errors).buildDepError "gll"))
          (hsPkgs."hXmixer" or ((hsPkgs.pkgs-errors).buildDepError "hXmixer"))
          (hsPkgs."hashabler" or ((hsPkgs.pkgs-errors).buildDepError "hashabler"))
          (hsPkgs."hipbot" or ((hsPkgs.pkgs-errors).buildDepError "hipbot"))
          (hsPkgs."hmm-hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmm-hmatrix"))
          (hsPkgs."hpack" or ((hsPkgs.pkgs-errors).buildDepError "hpack"))
          (hsPkgs."hsreadability" or ((hsPkgs.pkgs-errors).buildDepError "hsreadability"))
          (hsPkgs."hutton" or ((hsPkgs.pkgs-errors).buildDepError "hutton"))
          (hsPkgs."hvect" or ((hsPkgs.pkgs-errors).buildDepError "hvect"))
          (hsPkgs."ide-backend-server" or ((hsPkgs.pkgs-errors).buildDepError "ide-backend-server"))
          (hsPkgs."json-stream" or ((hsPkgs.pkgs-errors).buildDepError "json-stream"))
          (hsPkgs."libconfig" or ((hsPkgs.pkgs-errors).buildDepError "libconfig"))
          (hsPkgs."list-t-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "list-t-attoparsec"))
          (hsPkgs."list-t-html-parser" or ((hsPkgs.pkgs-errors).buildDepError "list-t-html-parser"))
          (hsPkgs."list-t-http-client" or ((hsPkgs.pkgs-errors).buildDepError "list-t-http-client"))
          (hsPkgs."list-t-libcurl" or ((hsPkgs.pkgs-errors).buildDepError "list-t-libcurl"))
          (hsPkgs."list-t-text" or ((hsPkgs.pkgs-errors).buildDepError "list-t-text"))
          (hsPkgs."mfsolve" or ((hsPkgs.pkgs-errors).buildDepError "mfsolve"))
          (hsPkgs."microlens-each" or ((hsPkgs.pkgs-errors).buildDepError "microlens-each"))
          (hsPkgs."microlens-mtl" or ((hsPkgs.pkgs-errors).buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."mockery" or ((hsPkgs.pkgs-errors).buildDepError "mockery"))
          (hsPkgs."moonshine" or ((hsPkgs.pkgs-errors).buildDepError "moonshine"))
          (hsPkgs."mosaico-lib" or ((hsPkgs.pkgs-errors).buildDepError "mosaico-lib"))
          (hsPkgs."mtl-c" or ((hsPkgs.pkgs-errors).buildDepError "mtl-c"))
          (hsPkgs."network-transport-amqp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-amqp"))
          (hsPkgs."nf" or ((hsPkgs.pkgs-errors).buildDepError "nf"))
          (hsPkgs."one-time-password" or ((hsPkgs.pkgs-errors).buildDepError "one-time-password"))
          (hsPkgs."pell" or ((hsPkgs.pkgs-errors).buildDepError "pell"))
          (hsPkgs."pgp-wordlist" or ((hsPkgs.pkgs-errors).buildDepError "pgp-wordlist"))
          (hsPkgs."random-derive" or ((hsPkgs.pkgs-errors).buildDepError "random-derive"))
          (hsPkgs."record-aeson" or ((hsPkgs.pkgs-errors).buildDepError "record-aeson"))
          (hsPkgs."refined" or ((hsPkgs.pkgs-errors).buildDepError "refined"))
          (hsPkgs."rspp" or ((hsPkgs.pkgs-errors).buildDepError "rspp"))
          (hsPkgs."sdr" or ((hsPkgs.pkgs-errors).buildDepError "sdr"))
          (hsPkgs."sendgrid-haskell" or ((hsPkgs.pkgs-errors).buildDepError "sendgrid-haskell"))
          (hsPkgs."singleton-nats" or ((hsPkgs.pkgs-errors).buildDepError "singleton-nats"))
          (hsPkgs."smallcheck-series" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-series"))
          (hsPkgs."sorting" or ((hsPkgs.pkgs-errors).buildDepError "sorting"))
          (hsPkgs."spline3" or ((hsPkgs.pkgs-errors).buildDepError "spline3"))
          (hsPkgs."step-function" or ((hsPkgs.pkgs-errors).buildDepError "step-function"))
          (hsPkgs."test-invariant" or ((hsPkgs.pkgs-errors).buildDepError "test-invariant"))
          (hsPkgs."text-position" or ((hsPkgs.pkgs-errors).buildDepError "text-position"))
          (hsPkgs."th-context" or ((hsPkgs.pkgs-errors).buildDepError "th-context"))
          (hsPkgs."th-inline-io-action" or ((hsPkgs.pkgs-errors).buildDepError "th-inline-io-action"))
          (hsPkgs."timezone-olson-th" or ((hsPkgs.pkgs-errors).buildDepError "timezone-olson-th"))
          (hsPkgs."twentefp-eventloop-trees" or ((hsPkgs.pkgs-errors).buildDepError "twentefp-eventloop-trees"))
          (hsPkgs."wai-request-spec" or ((hsPkgs.pkgs-errors).buildDepError "wai-request-spec"))
          (hsPkgs."yesod-gitrev" or ((hsPkgs.pkgs-errors).buildDepError "yesod-gitrev"))
          (hsPkgs."yesod-transloadit" or ((hsPkgs.pkgs-errors).buildDepError "yesod-transloadit"))
          ];
        buildable = true;
        };
      };
    }