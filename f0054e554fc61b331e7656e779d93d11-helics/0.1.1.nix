{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "helics";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "philopon.dependence@gmail.com";
        author = "HirotomoMoriwaki";
        homepage = "";
        url = "";
        synopsis = "New Relic® agent SDK wrapper for Haskell.";
        description = "New Relic® agent SDK wrapper for Haskell.\n\nPlease get New Relic Agent SDK(<https://docs.newrelic.com/docs/agents/agent-sdk/using-agent-sdk/getting-started-agent-sdk>) before you install this package.\n\nCopy include\\/lib dir of SDK to system include\\/lib path, or specify extra include\\/lib path when installing this package.\n\n@\ncabal insstall helics --extra-lib-dirs=\$SDK_LIB_DIR --extra-include-dir=\$SDK_INCLUDE_DIR\n@\n";
        buildType = "Custom";
      };
      components = {
        helics = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.bytestring-show
          ];
          libs = [
            pkgs.newrelic-collector-client
            pkgs.newrelic-transaction
            pkgs.newrelic-common
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        exes = {
          helics-example = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.helics
              hsPkgs.bytestring
            ];
          };
        };
      };
    }