{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "keter";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Web application deployment manager, focusing on Haskell web frameworks";
        description = "Handles deployment of web apps, using Nginx as a reverse proxy to achieve zero downtime deployments. For more information, please see the README on Github: <https://github.com/snoyberg/keter#readme>";
        buildType = "Simple";
      };
      components = {
        keter = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.process
            hsPkgs.random
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.zlib
            hsPkgs.tar
            hsPkgs.network
            hsPkgs.time
            hsPkgs.template-haskell
            hsPkgs.blaze-builder
            hsPkgs.yaml
            hsPkgs.unix-compat
            hsPkgs.hinotify
            hsPkgs.system-filepath
            hsPkgs.system-fileio
          ];
        };
        exes = {
          keter = {
            depends  = [
              hsPkgs.base
              hsPkgs.keter
            ];
          };
        };
      };
    }