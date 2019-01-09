{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tcp = false; simplelocalnet = false; p2p = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cloud-haskell"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/cloud-haskell";
      url = "";
      synopsis = "The Cloud Haskell Application Platform";
      description = "Cloud Haskell is a set of libraries that bring Erlang-style\nconcurrency and distribution to Haskell programs. This\nproject is an implementation of that distributed computing\ninterface, where processes communicate with one another through\nexplicit message passing rather than shared memory.\n\nThis package is just a convenient wrapper\naround the @distributed-process-platform@, @distributed-process@ and\n@network-transport@ packages, so they can be\ninstalled with a single @cabal install cloud-haskell@\ncommand.\n\nThe package also comes with flags to enable\ndifferent @Network.Transport@ and /Cloud Haskell/\n(network topology) backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-async)
          (hsPkgs.distributed-process-client-server)
          (hsPkgs.distributed-process-execution)
          (hsPkgs.distributed-process-extras)
          (hsPkgs.distributed-process-supervisor)
          (hsPkgs.distributed-process-task)
          (hsPkgs.distributed-static)
          (hsPkgs.network-transport)
          (hsPkgs.rank1dynamic)
          ] ++ (pkgs.lib).optional (flags.tcp) (hsPkgs.network-transport-tcp)) ++ (pkgs.lib).optional (flags.simplelocalnet) (hsPkgs.distributed-process-simplelocalnet)) ++ (pkgs.lib).optional (flags.p2p) (hsPkgs.distributed-process-p2p);
        };
      };
    }