{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "libcspm";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Thomas Gibson-Robinson";
        maintainer = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
        author = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
        homepage = "https://github.com/tomgr/libcspm";
        url = "";
        synopsis = "A library providing a parser, type checker and evaluator for CSPM.";
        description = "";
        buildType = "Simple";
      };
      components = {
        libcspm = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.directory
            hsPkgs.graph-wrapper
          ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.libcspm
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.directory
            ];
          };
        };
      };
    }