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
        name = "hspec-hedgehog";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "erikd@mega-nerd.com";
      author = "Erik de Castro Lopo";
      homepage = "https://github.com/erikd/hspec-hedgehog/";
      url = "";
      synopsis = "Hedgehog support for the Hspec testing framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hspec-hedgehog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.hspec-core)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-hedgehog)
          ];
        };
      };
    };
  }