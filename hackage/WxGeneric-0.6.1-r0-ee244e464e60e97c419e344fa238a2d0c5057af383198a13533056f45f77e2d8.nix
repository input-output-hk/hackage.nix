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
      identifier = { name = "WxGeneric"; version = "0.6.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      homepage = "http://www.haskell.org/haskellwiki/WxGeneric";
      url = "";
      synopsis = "Generic (SYB3) construction of wxHaskell widgets";
      description = "Using an algebraic data types structure and field names, this library constructs\nwidgets for wxHaskell. It can handle data types with single or multiple\nconstructors, as well as recursive data types.\n\nThe library is designed to integrate smoothly with wxHaskell. First, by making it\neasy to integrate WxGeneric-widgets into existing wxHaskell programs. Second, by\nletting a user extend WxGeneric using mostly wxHaskell function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."SybWidget" or (errorHandler.buildDepError "SybWidget"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xtc" or (errorHandler.buildDepError "xtc"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
        buildable = true;
        };
      };
    }