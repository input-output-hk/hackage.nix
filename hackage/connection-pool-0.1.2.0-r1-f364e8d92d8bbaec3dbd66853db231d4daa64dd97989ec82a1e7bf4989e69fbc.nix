{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "connection-pool";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/connection-pool";
      url = "";
      synopsis = "Connection pool built on top of resource-pool and streaming-commons.";
      description = "Connection poll is a family specialised resource pools. Currently package\nprovides two variants:\n\n1. pool for TCP client connections,\n\n2. and pool for UNIX Sockets client connections.\n\nThis package is built on top of\n<http://hackage.haskell.org/package/resource-pool resource-pool> and\n<http://hackage.haskell.org/package/streaming-commons streaming-commons>.\nThe later allows us to use\n<http://hackage.haskell.org/package/conduit-extra conduit-extra> package\nfor implementation of TCP or UNIX Sockets clients.\n\nFor examples and other details see documentation in \"Data.ConnectionPool\"\nmodule.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.between)
          (hsPkgs.data-default-class)
          (hsPkgs.monad-control)
          (hsPkgs.resource-pool)
          (hsPkgs.streaming-commons)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }