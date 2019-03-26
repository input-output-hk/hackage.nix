{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "arbor-monad-logger"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "2018-2019 Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/packetloop/arbor-monad-logger#readme";
      url = "";
      synopsis = "Simple logging library";
      description = "Please see the README on GitHub at <https://github.com/packetloop/arbor-monad-logger#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          ];
        };
      exes = {
        "arbor-monad-logger-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.arbor-monad-logger) ];
          };
        };
      tests = {
        "arbor-monad-logger-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.arbor-monad-logger)
            ];
          };
        };
      };
    }