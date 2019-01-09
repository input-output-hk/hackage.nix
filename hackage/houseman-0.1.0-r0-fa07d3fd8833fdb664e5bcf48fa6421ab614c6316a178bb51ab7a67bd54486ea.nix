{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "houseman"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daisuke Fujimura <me@fujmuradaisuke.com>";
      author = "";
      homepage = "https://github.com/fujimura/houseman#readme";
      url = "";
      synopsis = "A Haskell implementation of Foreman";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.trifecta)
          (hsPkgs.parsers)
          (hsPkgs.time)
          (hsPkgs.optparse-generic)
          (hsPkgs.dotenv)
          (hsPkgs.directory)
          (hsPkgs.streaming-commons)
          (hsPkgs.mtl)
          (hsPkgs.io-streams)
          ];
        };
      exes = {
        "houseman" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.trifecta)
            (hsPkgs.parsers)
            (hsPkgs.time)
            (hsPkgs.optparse-generic)
            (hsPkgs.dotenv)
            (hsPkgs.directory)
            (hsPkgs.streaming-commons)
            (hsPkgs.mtl)
            (hsPkgs.io-streams)
            (hsPkgs.houseman)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.trifecta)
            (hsPkgs.parsers)
            (hsPkgs.time)
            (hsPkgs.optparse-generic)
            (hsPkgs.dotenv)
            (hsPkgs.directory)
            (hsPkgs.streaming-commons)
            (hsPkgs.mtl)
            (hsPkgs.io-streams)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.silently)
            (hsPkgs.mockery)
            (hsPkgs.interpolate)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }