{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pipes-network";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2012-2013, Paolo Capriotti 2012-2012.";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-network";
      url = "";
      synopsis = "Use network sockets together with the pipes library.";
      description = "Use network sockets together with the @pipes@ library.\n\nThis package is organized using the following namespaces:\n\n* \"Control.Proxy.TCP\" exports 'Control.Proxy.Proxy's and functions for\nestablishing and using TCP connections.\n\n* \"Control.Proxy.TCP.Safe\" is similar to \"Control.Proxy.TCP\", except\nthe exported 'Control.Proxy.Proxy's themselves can obtain new network\nresources safely by using the facilities providied by the @pipes-safe@\npackage.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "pipes-network" = {
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