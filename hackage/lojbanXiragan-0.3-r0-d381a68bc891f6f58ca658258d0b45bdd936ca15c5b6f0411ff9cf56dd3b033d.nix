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
      specVersion = "1.8";
      identifier = { name = "lojbanXiragan"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "lojban to xiragan";
      description = "xiragan -e coi rodo\n\n「しょユ るぉど」\n\nxiragan -e ti ginka\n\n「てぃ ぎんか」\n\nxiragan -e \".o'i mu xagji sofybakni cu zvati le purdi\"\n\n「っおひ む はぁグじ そフゥぅばクに しゅ ズう\"ぁてぃ れ ぷルゥでぃ」";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "xiragan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lojbanXiragan" or (errorHandler.buildDepError "lojbanXiragan"))
          ];
          buildable = true;
        };
      };
    };
  }