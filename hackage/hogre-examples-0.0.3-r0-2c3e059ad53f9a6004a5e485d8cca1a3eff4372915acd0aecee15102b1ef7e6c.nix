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
      identifier = { name = "hogre-examples"; version = "0.0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Antti Salonen 2009";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://github.com/anttisalonen/hogre-examples";
      url = "";
      synopsis = "Examples for using Hogre.";
      description = "Examples for using Hogre, Haskell bindings to OGRE\n(Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).\nexample_01 creates a simple scene with a moving entity.\nexample_02 demonstrates use of SDL for input and window\ncreation.\nexample_03 demonstrates ray scene queries and loading\na world configuration from a file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "example_01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."hogre" or (errorHandler.buildDepError "hogre"))
            ];
          libs = [ (pkgs."OgreMain" or (errorHandler.sysDepError "OgreMain")) ];
          buildable = true;
          };
        "example_02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."hogre" or (errorHandler.buildDepError "hogre"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            ];
          libs = [ (pkgs."OgreMain" or (errorHandler.sysDepError "OgreMain")) ];
          buildable = true;
          };
        "example_03" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."hogre" or (errorHandler.buildDepError "hogre"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          libs = [ (pkgs."OgreMain" or (errorHandler.sysDepError "OgreMain")) ];
          buildable = true;
          };
        };
      };
    }