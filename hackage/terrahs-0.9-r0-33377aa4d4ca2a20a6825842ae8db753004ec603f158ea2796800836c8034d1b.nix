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
      specVersion = "1.2.3";
      identifier = { name = "terrahs"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Nick Rudnick <nick.rudnick@googlemail.com>";
      author = "Sergio Costa <skosta@gmail.com>";
      homepage = "http://lucc.ess.inpe.br/doku.php?id=terrahs";
      url = "";
      synopsis = "A Haskell GIS Programming Environment";
      description = "We have developed TerraHS, a software component that enables the development of geographical applications in a functional language, using the data handling capabilities of TerraLib. TerraLib is a C++ library that supports different spatial database management systems, and that includes a large number of spatial algorithms. As a result, we get a combination of the good features of both programming paradigms.\nMore info on package and its features at <http://www.haskell.org/haskellwiki/TerraHS>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        libs = [
          (pkgs."terralib4c" or (errorHandler.sysDepError "terralib4c"))
          (pkgs."translib" or (errorHandler.sysDepError "translib"))
          ];
        buildable = true;
        };
      };
    }