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
      specVersion = "1.2";
      identifier = { name = "greencard-lib"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alastair Reid <alastair@reid-consulting-uk.ltd.uk>; Sigbjorn Finne <sof@galois.com>";
      author = "Alastair Reid, Sigbjorn Finne, and Thomas Nordin";
      homepage = "http://www.haskell.org/greencard/";
      url = "";
      synopsis = "A foreign function interface pre-processor library for Haskell";
      description = "Green Card is a foreign function interface preprocessor for Haskell,\nsimplifying the task of interfacing Haskell programs to external libraries\n(which are normally exposed via C interfaces).\n\nThis package provides the Foreign.GreenCard library; the greencard binary is\npackaged separately.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."greencard" or (errorHandler.buildDepError "greencard"))
          ];
        buildable = true;
        };
      };
    }