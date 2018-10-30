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
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "2017 David Smith";
      maintainer = "shmish111@gmail.com";
      author = "David Smith";
      homepage = "https://github.com/shmish111/hriemann";
      url = "";
      synopsis = "Initial project template from stack";
      description = "A Riemann Client for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          (hsPkgs.hostname)
          (hsPkgs.unagi-chan)
          (hsPkgs.kazura-queue)
          (hsPkgs.criterion)
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
            (hsPkgs.base)
            (hsPkgs.hriemann)
          ];
        };
      };
    };
  }