{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-src";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/";
        url = "";
        synopsis = "Alternative install procedure to avoid the diamond dependency issue.";
        description = "Please see the README.md file on Github for more information: <https://github.com/yesodweb/cabal-src/blob/master/README.md>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-src-install" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tar
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }