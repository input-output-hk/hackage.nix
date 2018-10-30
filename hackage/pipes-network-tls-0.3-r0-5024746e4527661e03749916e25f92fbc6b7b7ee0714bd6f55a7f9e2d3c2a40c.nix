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
        name = "pipes-network-tls";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-network-tls";
      url = "";
      synopsis = "TLS-secured network connections support for pipes.";
      description = "Use TLS-secured network connections together with the @pipes@ ecosystem.\n\nThis package is organized using the following namespaces:\n\n* \"Pipes.Network.TCP.TLS\" exports pipes and utilities for using\nTLS-secured TCP connections in a streaming fashion.\n\n* \"Pipes.Network.TCP.TLS.Safe\" subsumes \"Pipes.Network.TCP.TLS\",\nexporting pipes and functions that allow you to safely establish new\nTCP connections within a pipeline using the @pipes-safe@ facilities.\nYou only need to use this module if you want to acquire and release\noperating system resources within a pipeline.\n\nSee the @changelog@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.network-simple-tls)
          (hsPkgs.pipes)
          (hsPkgs.pipes-network)
          (hsPkgs.pipes-safe)
          (hsPkgs.tls)
          (hsPkgs.transformers)
        ];
      };
    };
  }