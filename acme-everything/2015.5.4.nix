{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-everything";
          version = "2015.5.4";
        };
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
        acme-everything = {
          depends  = [
            hsPkgs.base
            hsPkgs.ApproxFun-hs
            hsPkgs.BufferedSocket
            hsPkgs.Dist
            hsPkgs.Earley
            hsPkgs.FastxPipe
            hsPkgs.SciFlow
            hsPkgs.SeqAlign
            hsPkgs.Shrub
            hsPkgs.acme-safe
            hsPkgs.acme-timemachine
            hsPkgs.agentx
            hsPkgs.bgzf
            hsPkgs.bindings-fluidsynth
            hsPkgs.bitcoin-api
            hsPkgs.cabocha
            hsPkgs.cmd-item
            hsPkgs.computations
            hsPkgs.crypto-classical
            hsPkgs.dbcleaner
            hsPkgs.diagrams-html5
            hsPkgs.diagrams-pgf
            hsPkgs.dicom
            hsPkgs.dove
            hsPkgs.ed25519-donna
            hsPkgs.engine-io-growler
            hsPkgs.ess
            hsPkgs.flamingra
            hsPkgs.flowlocks-framework
            hsPkgs.geniplate-mirror
            hsPkgs.ghc-prof-flamegraph
            hsPkgs.gll
            hsPkgs.hXmixer
            hsPkgs.hashabler
            hsPkgs.hipbot
            hsPkgs.hmm-hmatrix
            hsPkgs.hpack
            hsPkgs.hsreadability
            hsPkgs.hutton
            hsPkgs.hvect
            hsPkgs.ide-backend-server
            hsPkgs.json-stream
            hsPkgs.libconfig
            hsPkgs.list-t-attoparsec
            hsPkgs.list-t-html-parser
            hsPkgs.list-t-http-client
            hsPkgs.list-t-libcurl
            hsPkgs.list-t-text
            hsPkgs.mfsolve
            hsPkgs.microlens-each
            hsPkgs.microlens-mtl
            hsPkgs.microlens-th
            hsPkgs.mockery
            hsPkgs.moonshine
            hsPkgs.mosaico-lib
            hsPkgs.mtl-c
            hsPkgs.network-transport-amqp
            hsPkgs.nf
            hsPkgs.one-time-password
            hsPkgs.pell
            hsPkgs.pgp-wordlist
            hsPkgs.random-derive
            hsPkgs.record-aeson
            hsPkgs.refined
            hsPkgs.rspp
            hsPkgs.sdr
            hsPkgs.sendgrid-haskell
            hsPkgs.singleton-nats
            hsPkgs.smallcheck-series
            hsPkgs.sorting
            hsPkgs.spline3
            hsPkgs.step-function
            hsPkgs.test-invariant
            hsPkgs.text-position
            hsPkgs.th-context
            hsPkgs.th-inline-io-action
            hsPkgs.timezone-olson-th
            hsPkgs.twentefp-eventloop-trees
            hsPkgs.wai-request-spec
            hsPkgs.yesod-gitrev
            hsPkgs.yesod-transloadit
          ];
        };
      };
    }