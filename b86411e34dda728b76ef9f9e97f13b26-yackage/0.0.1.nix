{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yackage";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/yackage";
        url = "";
        synopsis = "Personal Hackage replacement for testing new packages.";
        description = "This package installs a yackage executable that runs a simplistic hackage-like server. It allows you to upload packages produced via cabal sdist and install them via cabal. The trick is to add the yackage repository to your cabal config file, with a line such as:\n\nremote-repo: yackage:http://localhost:3500/";
        buildType = "Simple";
      };
      components = {
        exes = {
          yackage = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.zlib
              hsPkgs.tar
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.data-object
              hsPkgs.data-object-yaml
              hsPkgs.cmdargs
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
          yackage-upload = {
            depends  = [
              hsPkgs.http-enumerator
              hsPkgs.blaze-builder
            ];
          };
        };
      };
    }