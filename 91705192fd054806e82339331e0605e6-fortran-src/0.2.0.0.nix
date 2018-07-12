{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fortran-src";
          version = "0.2.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "me@madgen.net";
        author = "Mistral Contrastin, Matthew Danish, Dominic Orchard, Andrew Rice";
        homepage = "";
        url = "";
        synopsis = "Parser and anlyses for Fortran standards 66, 77, 90.";
        description = "Provides lexing, parsing, and basic analyses of Fortran code covering standards: FORTRAN 66, FORTRAN 77, and Fortran 90. Includes data flow and basic block analysis, a renamer, and type analysis. For example usage, see the 'camfort' project, which uses fortran-src as its front end.";
        buildType = "Simple";
      };
      components = {
        "fortran-src" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.uniplate
            hsPkgs.GenericPretty
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.fgl
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
        exes = {
          "fortran-src" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.uniplate
              hsPkgs.GenericPretty
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.fgl
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.uniplate
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.GenericPretty
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.fgl
              hsPkgs.fortran-src
            ];
          };
        };
      };
    }