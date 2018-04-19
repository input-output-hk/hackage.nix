{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "satchmo";
          version = "1.8.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Pepe Iborra, Johannes Waldmann";
        homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/\nhttp://github.com/pepeiborra/satchmo/";
        url = "";
        synopsis = "SAT encoding monad";
        description = "Encoding for boolean and integral constraints into (QBF-)CNF-SAT.\nThe encoder is provided as a State monad (hence the \"mo\" in \"satchmo\").\nThis package contains functions that construct problems,\nto solve them, you need package satchmo-backends.";
        buildType = "Simple";
      };
      components = {
        satchmo = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.directory
          ];
        };
      };
    }