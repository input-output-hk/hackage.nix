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
      specVersion = "0";
      identifier = { name = "WxGeneric"; version = "0.5.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      homepage = "";
      url = "";
      synopsis = "Library which constructing generic (SYB3-based) widgets for WxHaskell";
      description = "Constructs widgets for WxHaskell using SybWidget.";
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
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
        buildable = true;
        };
      };
    }