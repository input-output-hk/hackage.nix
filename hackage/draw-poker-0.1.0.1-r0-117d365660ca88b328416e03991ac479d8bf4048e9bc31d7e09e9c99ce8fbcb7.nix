{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "draw-poker"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "its.out.of.tune.this.my.music@gmail.com";
      author = "tune";
      homepage = "http://github.com/name/project";
      url = "";
      synopsis = "playing draw poker";
      description = "for http://tune.hateblo.jp/entry/2015/05/12/023112";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
      exes = {
        "draw-poker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."draw-poker" or (errorHandler.buildDepError "draw-poker"))
          ];
          buildable = true;
        };
        "draw-poker-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."draw-poker" or (errorHandler.buildDepError "draw-poker"))
          ];
          buildable = true;
        };
      };
      tests = {
        "draw-poker-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."draw-poker" or (errorHandler.buildDepError "draw-poker"))
          ];
          buildable = true;
        };
      };
    };
  }