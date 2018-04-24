{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microstache";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus<oleg.grenrus@iki.fi>";
        author = "Mark Karpov <markkarpov@openmailbox.org>, Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/microstache";
        url = "";
        synopsis = "Mustache templates for Haskell";
        description = "Mustache templates for Haskell.\n\nBased on @stache@ library, which uses @megaparsec@.\nThis library uses @parsec@, thus the name: @microstache@.";
        buildType = "Simple";
      };
      components = {
        microstache = {
          depends  = ([
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") hsPkgs.ghc-prim) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.microstache
              hsPkgs.text
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          };
          mustache-spec = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.microstache
              hsPkgs.text
            ];
          };
        };
      };
    }