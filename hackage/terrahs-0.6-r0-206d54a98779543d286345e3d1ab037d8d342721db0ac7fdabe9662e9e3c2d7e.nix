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
      identifier = { name = "terrahs"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergio Costa <skosta@gmail.com>";
      author = "Sergio Costa <skosta@gmail.com>";
      homepage = "http://lucc.ess.inpe.br/doku.php?id=terrahs";
      url = "";
      synopsis = "Simple library for GIS Programs in Haskell.";
      description = "a software component that enables the development of geographical\napplications in a functional language, using the data handling capabilities\nof TerraLib. TerraLib is a C++ library that supports different spatial\ndatabase management systems, and that includes a large number\nof spatial algorithms.\n\nMore info on package and its features at <http://lucc.ess.inpe.br/doku.php?id=terrahs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        libs = [ (pkgs."terrahsc" or (errorHandler.sysDepError "terrahsc")) ];
        buildable = true;
        };
      };
    }