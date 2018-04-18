{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      production = true;
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tkyprof";
          version = "0.2.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2014 Mitsutoshi Aoe";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/tkyprof";
        url = "";
        synopsis = "A web-based visualizer for GHC Profiling Reports";
        description = "A web-based visualizer for GHC Profiling Reports";
        buildType = "Simple";
      };
      components = {
        tkyprof = {};
        exes = {
          tkyprof = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.conduit-extra
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.directory
              hsPkgs.data-default
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.rosezipper
              hsPkgs.stm
              hsPkgs.exceptions
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
              hsPkgs.web-routes
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-form
              hsPkgs.yesod-static
              hsPkgs.shakespeare
              hsPkgs.http-types
              hsPkgs.conduit
              hsPkgs.resourcet
            ];
          };
          prof2json = {
            depends  = [
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.blaze-builder
            ];
          };
        };
      };
    }