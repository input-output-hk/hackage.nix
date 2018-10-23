{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "introduction-test";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/introduction";
      url = "";
      synopsis = "A prelude for the tests of safe new projects";
      description = "A prelude for the tests of safe new projects";
      buildType = "Simple";
    };
    components = {
      "introduction-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.introduction)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-containers)
          (hsPkgs.genvalidity-text)
          (hsPkgs.genvalidity-hspec)
        ];
      };
    };
  }