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
        name = "bindings-sane";
        version = "0.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright (C) 2012  Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/bindings-sane";
      url = "";
      synopsis = "FFI bindings to libsane";
      description = "These are FFI bindings to the SANE API (version 1.0)";
      buildType = "Simple";
    };
    components = {
      "bindings-sane" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        pkgconfig = [
          (pkgconfPkgs.sane-backends)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }