{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { sample = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "prefork";
        version = "0.0.9";
      };
      license = "MIT";
      copyright = "(c) 2013 GREE, Inc.";
      maintainer = "kiyoshi.ikehara@gree.net";
      author = "Kiyoshi Ikehara, Benjamin Sruma";
      homepage = "";
      url = "";
      synopsis = "A library for building a prefork-style server quickly";
      description = "Prefork is a library for building a prefork-style server quickly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.system-argv0)
          (hsPkgs.system-filepath)
          (hsPkgs.data-default)
          (hsPkgs.process)
        ];
      };
      exes = {
        "prefork-sample-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.prefork)
          ];
        };
        "prefork-sample-various-workers" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.prefork)
          ];
        };
        "prefork-sample-warp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.stm)
            (hsPkgs.blaze-builder)
            (hsPkgs.http-types)
            (hsPkgs.unix)
            (hsPkgs.prefork)
            (hsPkgs.cmdargs)
            (hsPkgs.async)
          ];
        };
      };
      tests = {
        "test-prefork" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.prefork)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.cab)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
        "test-prefork-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.prefork)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.unix)
            (hsPkgs.process)
          ];
        };
      };
    };
  }