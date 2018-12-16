{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hriemann";
        version = "0.3.2.1";
      };
      license = "MIT";
      copyright = "2017 David Smith";
      maintainer = "shmish111@gmail.com";
      author = "David Smith";
      homepage = "https://github.com/shmish111/hriemann";
      url = "";
      synopsis = "A Riemann Client for Haskell";
      description = "A Riemann Client for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.hostname)
          (hsPkgs.unagi-chan)
          (hsPkgs.kazura-queue)
          (hsPkgs.criterion)
        ];
      };
      exes = {
        "hriemann-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hriemann)
          ];
        };
      };
      tests = {
        "hriemann-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hriemann)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.kazura-queue)
          ];
        };
      };
    };
  }