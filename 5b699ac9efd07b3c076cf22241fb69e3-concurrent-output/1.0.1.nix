{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "concurrent-output";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Joey Hess";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess";
        homepage = "";
        url = "";
        synopsis = "handling concurrent output";
        description = "Provides a simple interface for writing concurrent programs that\nneed to output a lot of status messages to the console, and/or run\nconcurrent external commands that output to the console.";
        buildType = "Simple";
      };
      components = {
        "concurrent-output" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.process
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.exceptions
          ];
        };
      };
    }