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
        name = "happstack-server-tls";
        version = "7.1.6.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "extend happstack-server with https:// support (TLS/SSL)";
      description = "extend happstack-server with https:// support (TLS/SSL)";
      buildType = "Simple";
    };
    components = {
      "happstack-server-tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.happstack-server)
          (hsPkgs.hslogger)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.network)
          (hsPkgs.sendfile)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        libs = [ (pkgs."ssl") ];
      };
    };
  }