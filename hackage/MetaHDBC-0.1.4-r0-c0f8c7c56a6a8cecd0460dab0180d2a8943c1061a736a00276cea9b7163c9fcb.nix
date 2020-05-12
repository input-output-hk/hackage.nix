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
      identifier = { name = "MetaHDBC"; version = "0.1.4"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      maintainer = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      author = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Statically checked database access";
      description = "Using Template Haskell and HDBC to do statically checked\ndatabase access.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          ];
        buildable = true;
        };
      };
    }