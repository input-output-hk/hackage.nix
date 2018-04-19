{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tpar";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2016 Ben Gamari <bgamari@gmail.com>";
        maintainer = "bgamari@gmail.com";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/tpar/";
        url = "";
        synopsis = "simple, parallel job scheduling";
        description = "@tpar@ is a simple job scheduling and dispatch service for distributing and\nmonitoring tasks across machines. It was written to serve as a simple and\neasy-to-administer substitute for systems like Grid Engine.\n\nConfiguring a @tpar@ instance is simply a matter of running @tpar server@ on\na designated server machine,\n\n@\n\$ # We'll need to know the hostname of the server\n\$ hostname\nmy-server\n\$ # Start a server also running 8 local workers\n\$ tpar server -Hmy-server -N8\n@\n\nSubmitting a job is then similarly easy,\n\n@\n\$ tpar enqueue -H`hostname` -- long-process arg1 arg2\n@\n\nOne can then enqueue jobs easily\n\n@\n\$ tpar enqueue -Hmy-server -- bash -c \"primes 10000000000  | head -n1\"\n\$ tpar status -v\n0     unnamed-job                                        finished\npriority:       0\nqueued:         1 seconds ago\ncommand:        bash\narguments:      -c primes 10000000000  | head -n1\nlogging:        stdout: none\nstderr: none\nstatus:         finished with 0 (at 1 seconds ago)\nstarted at 1 seconds ago\nran on nid://localhost:5757:0\n@\n\nOne can add more workers to help churn through the work queue using the\n@tpar worker@ command,\n\n@\n\$ # Add 16 more workers running on another machine\n\$ ssh my-workers -- tpar worker -Hmy-server -N16\n@\n\nFinally, the output of running jobs can be monitored using the @tpar watch@\ncommand,\n\n@\n\$ tpar watch id=0\n@";
        buildType = "Simple";
      };
      components = {
        exes = {
          tpar = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.errors
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.friendly-time
              hsPkgs.process
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-safe
              hsPkgs.pipes-concurrency
              hsPkgs.optparse-applicative
              hsPkgs.distributed-process
              hsPkgs.network-transport-tcp
              hsPkgs.network
              hsPkgs.heaps
              hsPkgs.ansi-wl-pprint
              hsPkgs.trifecta
              hsPkgs.parsers
              hsPkgs.aeson
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.distributed-process
              hsPkgs.network-transport-inmemory
              hsPkgs.exceptions
              hsPkgs.pipes
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.errors
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.process
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-safe
              hsPkgs.pipes-concurrency
              hsPkgs.optparse-applicative
              hsPkgs.distributed-process
              hsPkgs.network-transport-tcp
              hsPkgs.network
              hsPkgs.heaps
              hsPkgs.trifecta
            ];
          };
        };
      };
    }