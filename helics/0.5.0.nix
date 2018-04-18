{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
      dummy = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "helics";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/helics";
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
            hsPkgs.bytestring
          ] ++ optionals (!(_flags.dummy && !system.isLinux)) [
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.bytestring-show
          ];
          libs = optionals (!(_flags.dummy && !system.isLinux)) [
            pkgs.newrelic-collector-client
            pkgs.newrelic-transaction
            pkgs.newrelic-common
          ];
        };
        exes = {
          helics-example = {
            depends  = optionals _flags.example [
              hsPkgs.base
              hsPkgs.helics
              hsPkgs.bytestring
            ];
          };
        };
      };
    }