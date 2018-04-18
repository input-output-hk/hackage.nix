{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      demos = false;
      minimal-demo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xing-api";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2013 Jan Ahrens";
        maintainer = "Jan Ahrens";
        author = "Jan Ahrens";
        homepage = "http://github.com/JanAhrens/xing-api-haskell";
        url = "";
        synopsis = "Wrapper for the XING API, v1.";
        description = "This package is currently under development and not considered stable.\nThe versioning follows <http://semver.org> and the first stable version will be release as 1.0.0.\n\nThis package includes a couple of demo programs.\nBy default these demos won't be built and you'll only install the library.\nYou have to set the /demos/ flag if you want to install them.\nTo use these demos, you also have to obtain an API consumer key from\n<https://dev.xing.com/applications> (a /test key/ will suffice).\n\n>cabal install -f demos xing-api";
        buildType = "Simple";
      };
      components = {
        xing-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.authenticate-oauth
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.resourcet
            hsPkgs.lifted-base
            hsPkgs.monad-control
          ];
        };
        exes = {
          xing-api-cli-demo = {
            depends  = optionals _flags.demos [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.monad-control
              hsPkgs.resourcet
              hsPkgs.xing-api
            ];
          };
          xing-api-yesod-demo = {
            depends  = optionals _flags.demos [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.http-conduit
              hsPkgs.hamlet
              hsPkgs.shakespeare-i18n
              hsPkgs.time
              hsPkgs.warp
              hsPkgs.yesod-core
              hsPkgs.xing-api
            ];
          };
          xing-api-minimal-demo = {
            depends  = optionals _flags.minimal-demo [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.xing-api
            ];
          };
        };
        tests = {
          TestMain = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.time
              hsPkgs.HTF
              hsPkgs.xing-api
            ];
          };
        };
      };
    }