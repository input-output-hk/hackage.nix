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
        name = "t3-game";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Author Here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/jxv/t3#readme";
      url = "";
      synopsis = "tic-tac-toe core";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "t3-game" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.safe)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "t3-game-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.t3-game)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }