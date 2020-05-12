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
      identifier = { name = "ffmpeg-tutorials"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Vasyl Pasternak";
      maintainer = "vasylpasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "http://patch-tag.com/r/VasylPasternak/ffmpeg-tutorials";
      url = "";
      synopsis = "Tutorials on ffmpeg usage to play video/audio";
      description = "A set of tutorials with raising complexity";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tutorial01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."hs-ffmpeg" or (errorHandler.buildDepError "hs-ffmpeg"))
            ];
          buildable = true;
          };
        "tutorial02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."hs-ffmpeg" or (errorHandler.buildDepError "hs-ffmpeg"))
            ];
          buildable = true;
          };
        "tutorial03" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."hs-ffmpeg" or (errorHandler.buildDepError "hs-ffmpeg"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }