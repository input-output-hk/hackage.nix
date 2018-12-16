{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      example = false;
      dummy = true;
    };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optionals (!(flags.dummy && !system.isLinux)) [
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.bytestring-show)
        ];
        libs = pkgs.lib.optionals (!(flags.dummy && !system.isLinux)) [
          (pkgs."newrelic-collector-client")
          (pkgs."newrelic-transaction")
          (pkgs."newrelic-common")
        ];
        build-tools = pkgs.lib.optional (!(flags.dummy && !system.isLinux)) (hsPkgs.buildPackages.hsc2hs);
      };
      exes = {
        "helics-example" = {
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs.base)
            (hsPkgs.helics)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }