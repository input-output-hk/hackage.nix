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
      identifier = { name = "boomslang"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Boomshine clone";
      description = "A clone of Boomshine (see <http://www.k2xl.com/games/boomshine/>).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "boomslang" = {
          depends = [
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
            (hsPkgs."font-opengl-basic4x6" or (errorHandler.buildDepError "font-opengl-basic4x6"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }