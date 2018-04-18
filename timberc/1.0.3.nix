{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "timberc";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Johan Nordlander <nordland@csee.ltu.se>";
        author = "Johan Nordlander";
        homepage = "http://www.timber-lang.org";
        url = "";
        synopsis = "The Timber Compiler.";
        description = "This is a compiler for a strict and pure functional\nlanguage";
        buildType = "Custom";
      };
      components = {
        exes = {
          timberc = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.pretty
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.array
              hsPkgs.bzlib
              hsPkgs.bytestring
            ];
          };
        };
      };
    }