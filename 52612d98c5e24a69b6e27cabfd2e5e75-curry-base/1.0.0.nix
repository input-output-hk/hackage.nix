{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      broken-directory = false;
      old-time = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "curry-base";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fte@informatik.uni-kiel.de";
        author = "Wolfgang Lux, Martin Engelke, Bernd Braßel, Holger Siegel,\nBjörn Peemöller, Finn Teegen";
        homepage = "http://curry-language.org";
        url = "";
        synopsis = "Functions for manipulating Curry programs";
        description = "This package serves as a foundation for Curry compilers.\nIt defines the intermediate language formats FlatCurry.\nAdditionally, it provides functionality for the smooth\nintegration of compiler frontends and backends.";
        buildType = "Simple";
      };
      components = {
        curry-base = {
          depends  = ([
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.extra
            hsPkgs.parsec
            hsPkgs.pretty
          ] ++ optionals compiler.isGhc [
            hsPkgs.either
            hsPkgs.contravariant
            hsPkgs.semigroupoids
          ]) ++ (if _flags.broken-directory
            then [
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.base
            ]
            else if _flags.old-time
              then [
                hsPkgs.old-time
                hsPkgs.directory
              ]
              else [
                hsPkgs.time
                hsPkgs.directory
              ]);
        };
        tests = {
          test-base = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.curry-base
              hsPkgs.filepath
              hsPkgs.mtl
            ];
          };
        };
      };
    }