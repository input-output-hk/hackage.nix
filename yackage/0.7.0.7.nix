{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      upload = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yackage";
          version = "0.7.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/yackage";
        url = "";
        synopsis = "Personal Hackage replacement for testing new packages.";
        description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/yackage>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          yackage = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-core
              hsPkgs.warp
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.zlib
              hsPkgs.tar
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.yaml
              hsPkgs.cmdargs
              hsPkgs.wai
              hsPkgs.transformers
              hsPkgs.shakespeare
              hsPkgs.yesod-form
              hsPkgs.http-types
              hsPkgs.blaze-html
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.conduit
            ];
          };
          yackage-upload = {
            depends  = optionals _flags.upload [
              hsPkgs.base
              hsPkgs.http-conduit
              hsPkgs.blaze-builder
              hsPkgs.bytestring
            ];
          };
        };
      };
    }