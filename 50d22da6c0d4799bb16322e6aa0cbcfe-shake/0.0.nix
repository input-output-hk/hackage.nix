{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      testprog = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "shake";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2011";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/shake/";
        url = "";
        synopsis = "Build system creator";
        description = "Write build systems. NOT READY FOR USE YET. DO NOT USE THIS PACKAGE.";
        buildType = "Simple";
      };
      components = {
        "shake" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.binary
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.parallel-io
            hsPkgs.transformers
          ];
        };
        exes = { "shake" = {}; };
      };
    }