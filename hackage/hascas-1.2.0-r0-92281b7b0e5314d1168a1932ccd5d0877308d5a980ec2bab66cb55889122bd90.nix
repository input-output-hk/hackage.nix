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
        name = "hascas";
        version = "1.2.0";
      };
      license = "LicenseRef-Apache";
      copyright = "2016 Saurabh Rawat";
      maintainer = "saurabh.rawat90@gmail.com";
      author = "Saurabh Rawat";
      homepage = "https://github.com/eklavya/hascas#readme";
      url = "";
      synopsis = "Cassandra driver for haskell";
      description = "This is a cassandra driver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.network)
          (hsPkgs.uuid)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.mtl)
          (hsPkgs.safe-exceptions)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "hascas-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hascas)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.uuid)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.safe-exceptions)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }