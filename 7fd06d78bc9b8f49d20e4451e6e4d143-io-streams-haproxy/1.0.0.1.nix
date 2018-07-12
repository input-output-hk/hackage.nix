{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "io-streams-haproxy";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Google, Inc. and CONTRIBUTORS";
        maintainer = "greg@gregorycollins.net";
        author = "Gregory Collins";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "HAProxy protocol 1.5 support for io-streams";
        description = "HAProxy protocol version 1.5 support (see\n<http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt>) for applications\nusing io-streams. The proxy protocol allows information about a networked\npeer (like remote address and port) to be propagated through a forwarding\nproxy that is configured to speak this protocol.";
        buildType = "Simple";
      };
      components = {
        "io-streams-haproxy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.io-streams
            hsPkgs.network
            hsPkgs.transformers
          ];
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.io-streams
              hsPkgs.network
              hsPkgs.transformers
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }