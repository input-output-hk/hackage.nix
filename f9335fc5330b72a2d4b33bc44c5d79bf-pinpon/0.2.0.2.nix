{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pinpon-executable = true;
      pinpon-gpio-executable = true;
      pinpon-ring-executable = true;
      test-doctests = true;
      test-hlint = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pinpon";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018, Quixoftic, LLC";
        maintainer = "Drew Hess <dhess-src@quixoftic.com>";
        author = "Drew Hess <dhess-src@quixoftic.com>";
        homepage = "https://github.com/quixoftic/pinpon#readme";
        url = "";
        synopsis = "A gateway for various cloud notification services";
        description = "@pinpon@ is a gateway for various cloud notification services, such\nas the Amazon AWS SNS service.\n\nThink of @pinpon@ as a hub for dispatching notifications originating\nfrom multiple notification sources. Clients of the @pinpon@ service\ncreate topics and send notifications via the REST-ish @pinpon@\nservice, and the @pinpon@ server takes care of the per-service\ndetails and communicating with the upstream cloud services.\n\nAdvantages of this approach, compared to programming directly to the\nindividual notification services' interfaces, are:\n\n* A common API for all supported notification services.\n\n* The secret credentials required to communicate with each cloud\nnotification service can be kept in a central location (namely,\nthe @pinpon@ server), rather than being distributed to each\nnotification source host, therefore reducing the attack surface.\n\n* Hosts which send notifications via the @pinpon@ gateway can be\nfirewalled from the public Internet. This is especially useful in\nIoT applications.\n\nCurrently-supported notification services:\n\n* Amazon AWS SNS";
        buildType = "Simple";
      };
      components = {
        pinpon = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.amazonka
            hsPkgs.amazonka-core
            hsPkgs.amazonka-sns
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lucid
            hsPkgs.mtl
            hsPkgs.protolude
            hsPkgs.resourcet
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.servant-docs
            hsPkgs.servant-lucid
            hsPkgs.servant-server
            hsPkgs.servant-swagger
            hsPkgs.servant-swagger-ui
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.wai
            hsPkgs.warp
          ];
        };
        exes = {
          pinpon = {
            depends  = pkgs.lib.optionals (!(!_flags.pinpon-executable)) [
              hsPkgs.amazonka
              hsPkgs.amazonka-sns
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.optparse-text
              hsPkgs.pinpon
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.warp
            ];
          };
          pinpon-gpio = {
            depends  = pkgs.lib.optionals (!(!_flags.pinpon-gpio-executable)) [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.hpio
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.optparse-text
              hsPkgs.pinpon
              hsPkgs.protolude
              hsPkgs.servant-client
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.warp
            ];
          };
          pinpon-ring = {
            depends  = pkgs.lib.optionals (!(!_flags.pinpon-ring-executable)) [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.optparse-text
              hsPkgs.pinpon
              hsPkgs.protolude
              hsPkgs.servant-client
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.warp
            ];
          };
        };
        tests = {
          doctest = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.protolude
            ];
          };
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
              hsPkgs.protolude
            ];
          };
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.pinpon
              hsPkgs.protolude
              hsPkgs.quickcheck-instances
              hsPkgs.servant-swagger
            ] ++ pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
              hsPkgs.protolude
            ];
          };
        };
      };
    }