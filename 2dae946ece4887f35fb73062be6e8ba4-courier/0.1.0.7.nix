{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "courier";
          version = "0.1.0.7";
        };
        license = "MIT";
        copyright = "Copyright (c) 2013 Phil Hargett";
        maintainer = "phil@haphazardhouse.net";
        author = "Phil Hargett";
        homepage = "http://github.com/hargettp/courier";
        url = "";
        synopsis = "A message-passing library for simplifying network applications";
        description = "Inspired by Erlang's simple message-passing facilities, courier provides roughly similar\ncapabilities. Applications simply create one or more endpoints,\nbind each to a transport using a given name, then can freely\nsend / receive messages to other endpoints just by referencing the name each endpoint\nbound to its transport.\n\nNote that while the simplicity is inspired by Erlang, the actual semantics of a receive\noperation are not: receive just returns the next message delivered to an endpoint by a\ntransport. There is no attempt to perform pattern-matching on a range of alternatives,\nand thus enabling out-of-order receipt. Consequently, all messages delivered to an endpoint\nwill always be received in the order delivered. In this sense, endpoints are more akin to\nchannels in Go but without the strict typing.";
        buildType = "Simple";
      };
      components = {
        courier = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.hslogger
            hsPkgs.network
            hsPkgs.network-simple
            hsPkgs.stm
            hsPkgs.text
          ];
        };
        tests = {
          test-courier = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.cereal
              hsPkgs.directory
              hsPkgs.hslogger
              hsPkgs.network-simple
              hsPkgs.courier
            ];
          };
        };
      };
    }