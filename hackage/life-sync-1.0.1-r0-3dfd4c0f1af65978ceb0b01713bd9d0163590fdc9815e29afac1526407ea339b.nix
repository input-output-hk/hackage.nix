{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "life-sync";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/life-sync";
      url = "";
      synopsis = "";
      description = "Synchronize personal configs across multiple machines";
      buildType = "Simple";
    };
    components = {
      "life-sync" = {
        depends  = [
          (hsPkgs.base-noprelude)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.fmt)
          (hsPkgs.microlens-platform)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.process)
          (hsPkgs.relude)
          (hsPkgs.text)
          (hsPkgs.tomland)
        ];
      };
      exes = {
        "life" = {
          depends  = [
            (hsPkgs.base-noprelude)
            (hsPkgs.containers)
            (hsPkgs.life-sync)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
          ];
        };
      };
      tests = {
        "life-sync-test" = {
          depends  = [
            (hsPkgs.base-noprelude)
            (hsPkgs.life-sync)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.path)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover)
          ];
        };
      };
    };
  }