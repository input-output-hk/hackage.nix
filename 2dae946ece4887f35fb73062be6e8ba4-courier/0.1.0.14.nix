{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "courier";
        version = "0.1.0.14";
      };
      license = "MIT";
      copyright = "Copyright (c) 2013-14 Phil Hargett";
      maintainer = "phil@haphazardhouse.net";
      author = "Phil Hargett";
      homepage = "http://github.com/hargettp/courier";
      url = "";
      synopsis = "A message-passing library for simplifying network applications";
      description = "Inspired by Erlang's simple message-passing facilities, courier provides roughly similar\ncapabilities. Applications simply create one or more endpoints,\nbind each to a transport using a given name, then can freely\nsend / receive messages to other endpoints just by referencing the name each endpoint\nbound to its transport.\n\nA primary driver of this package's design is separation of concerns: many algorithms\n(especially for distributed applications) depend upon a message-passing foundation,\nbut the algorithms are sufficiently complex that the details of how those messages\nare transmitted among nodes are best hidden away and solved separately from\nthe distributed algorithm itself.  With this in mind, this package aims\nto provide a variety of transports as well as support for common communication\nidioms (e.g., in order message delivery, selective out of order message delivery,\nsynchronous RPC, etc.).\n\nApplications may process messages in the order received at an endpoint, or use\nselective message reception to process the first message arriving at an endpoint\nthat also matches a provided selection function. Through selective message reception,\napplications may approximate the style of an Erlang application, and enjoy better\ncomposability of message reception with multiple independent dispatch routines or\nmessage pumps.";
      buildType = "Simple";
    };
    components = {
      "courier" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.hslogger)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "test-courier" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.async)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hslogger)
            (hsPkgs.stm)
            (hsPkgs.courier)
          ];
        };
      };
    };
  }