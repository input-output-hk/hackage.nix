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
      specVersion = "1.6";
      identifier = { name = "wxturtle"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "turtle like LOGO with wxHaskell";
      description = "turtle like LOGO with wxHaskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yjtools" or (errorHandler.buildDepError "yjtools"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."yjsvg" or (errorHandler.buildDepError "yjsvg"))
          (hsPkgs."Imlib" or (errorHandler.buildDepError "Imlib"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
        ];
        buildable = true;
      };
      exes = { "testTurtle" = { buildable = true; }; };
    };
  }