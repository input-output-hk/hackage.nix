{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "selenium-server";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/selenium-server.git";
        url = "";
        synopsis = "Run the selenium standalone server for usage with webdriver";
        description = "Run the selenium standalone server for usage with webdriver";
        buildType = "Simple";
      };
      components = {
        selenium-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.http-conduit-downloader
            hsPkgs.network
            hsPkgs.process
            hsPkgs.random
            hsPkgs.regex-tdfa
            hsPkgs.utf8-string
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.selenium-server
              hsPkgs.text
              hsPkgs.webdriver
            ];
          };
        };
      };
    }