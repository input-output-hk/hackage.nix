{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pool";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Thread-safe resource pools. (deprecated)";
      description = "This package is deprecated. Users are recommended to switch over to resource-pool and/or pool-conduit. Note: pool-conduit is built on top of resource-pool.";
      buildType = "Simple";
    };
    components = {
      "pool" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
        ];
      };
    };
  }