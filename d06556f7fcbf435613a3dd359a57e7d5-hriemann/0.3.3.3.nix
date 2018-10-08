{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hriemann";
        version = "0.3.3.3";
      };
      license = "MIT";
      copyright = "2017 David Smith";
      maintainer = "shmish111@gmail.com";
      author = "David Smith";
      homepage = "https://github.com/shmish111/hriemann#readme";
      url = "";
      synopsis = "A Riemann Client for Haskell";
      description = "A Riemann Client for Haskell";
      buildType = "Simple";
    };
    components = {
      "hriemann" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.criterion)
          (hsPkgs.hostname)
          (hsPkgs.kazura-queue)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unagi-chan)
        ];
      };
      exes = {
        "hriemann-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hriemann)
          ];
        };
      };
      tests = {
        "hriemann-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hriemann)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.kazura-queue)
          ];
        };
      };
    };
  }