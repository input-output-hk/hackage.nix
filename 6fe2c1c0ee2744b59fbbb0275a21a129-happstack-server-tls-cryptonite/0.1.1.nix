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
      specVersion = "1.6";
      identifier = {
        name = "happstack-server-tls-cryptonite";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, 2015 Andrey Sverdlichenko";
      maintainer = "blaze@ruddy.ru";
      author = "Andrey Sverdlichenko";
      homepage = "";
      url = "";
      synopsis = "Extend happstack-server with native HTTPS support (TLS/SSL)";
      description = "Extend happstack-server with native HTTPS support (TLS/SSL)";
      buildType = "Simple";
    };
    components = {
      "happstack-server-tls-cryptonite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default-class)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.happstack-server)
          (hsPkgs.hslogger)
          (hsPkgs.network)
          (hsPkgs.sendfile)
          (hsPkgs.time)
          (hsPkgs.tls)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }