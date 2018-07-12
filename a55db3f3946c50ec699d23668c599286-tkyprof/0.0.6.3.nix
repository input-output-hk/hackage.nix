{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      production = true;
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tkyprof";
          version = "0.0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Mitsutoshi Aoe";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/tkyprof";
        url = "";
        synopsis = "A web-based visualizer for GHC Profiling Reports";
        description = "A web-based visualizer for GHC Profiling Reports";
        buildType = "Simple";
      };
      components = {
        "tkyprof" = {};
        exes = {
          "tkyprof" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.attoparsec-enumerator
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.enumerator
              hsPkgs.filepath
              hsPkgs.hamlet
              hsPkgs.mtl
              hsPkgs.rosezipper
              hsPkgs.stm
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
              hsPkgs.web-routes
              hsPkgs.yesod-core
              hsPkgs.yesod-form
              hsPkgs.yesod-json
              hsPkgs.yesod-static
            ];
          };
          "prof2json" = {
            depends  = [
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.blaze-builder
            ];
          };
        };
      };
    }