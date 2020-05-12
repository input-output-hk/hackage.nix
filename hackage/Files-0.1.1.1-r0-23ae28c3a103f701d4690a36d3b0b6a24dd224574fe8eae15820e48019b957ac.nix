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
      identifier = { name = "Files"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "2016 Yuhang(Steven) Wang";
      maintainer = "stevenyhw.project@gmail.com";
      author = "Yuhang(Steven) Wang";
      homepage = "https://github.com/yuhangwang/Files#readme";
      url = "";
      synopsis = "File content extraction/rearrangement";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "Files" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Files" or (errorHandler.buildDepError "Files"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Files" or (errorHandler.buildDepError "Files"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }