{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pipes-network";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2012-2013, Paolo Capriotti 2012-2012.";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-network";
      url = "";
      synopsis = "Use network sockets together with the pipes library.";
      description = "Use network sockets together with the @pipes@ library.\n\nThis package is organized using the following namespaces:\n\n* \"Control.Proxy.TCP\" exports @pipes@ proxies and functions to deal with TCP\nconnections. Such proxies don't acquire nor release new resources within a\nproxy pipeline.\n\n* \"Control.Proxy.TCP.Safe\" exports @pipes-safe@ proxies and functions to deal\nwith TCP connections. Such proxies may safely acquire and release resources\nwithin a pipeline, using the facilities provided by the @pipes-safe@ package.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.pipes-network)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.transformers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }