{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HostAndPort";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) Slava Bacherikov 2015";
        maintainer = "slava@bacher09.org";
        author = "Slava Bacherikov";
        homepage = "https://github.com/bacher09/hostandport";
        url = "";
        synopsis = "Parser for host and port pairs like localhost:22";
        description = "Simple parser for parsing host and port pairs.\nHost can be either ipv4, ipv6 or domain name and port are\noptional.\n\nIPv6 address should be surrounded by square brackets.\n\nExamples:\n\n* localhost\n\n* localhost:8080\n\n* 127.0.0.1\n\n* 127.0.0.1:8080\n\n* [::1]\n\n* [::1]:8080";
        buildType = "Simple";
      };
      components = {
        HostAndPort = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HostAndPort
              hsPkgs.hspec
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HostAndPort
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          bench-hostandport = {
            depends  = [
              hsPkgs.base
              hsPkgs.HostAndPort
              hsPkgs.criterion
            ];
          };
        };
      };
    }