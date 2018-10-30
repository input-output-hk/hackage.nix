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
      specVersion = "1.6";
      identifier = {
        name = "libssh2";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "http://redmine.iportnov.ru/projects/libssh2-hs";
      url = "";
      synopsis = "FFI bindings to libssh2 SSH2 client library (http://libssh2.org/)";
      description = "This package provides FFI bindings for SSH2 client library named libssh2.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.syb)
          (hsPkgs.time)
        ];
        libs = [ (pkgs."ssh2") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }