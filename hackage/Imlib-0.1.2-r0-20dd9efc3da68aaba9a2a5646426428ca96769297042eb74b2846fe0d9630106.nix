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
      specVersion = "1.0";
      identifier = { name = "Imlib"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Raster <lazor@affenbande.org>";
      author = "Cale Gibbard";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Haskell binding for Imlib 2";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
        ];
        libs = [ (pkgs."Imlib2" or (errorHandler.sysDepError "Imlib2")) ];
        buildable = true;
      };
    };
  }