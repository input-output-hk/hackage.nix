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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "wxcore"; version = "0.10.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "wxhaskell-users@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell.  It is built on top of wxWidgets – a comprehensive C++ library that is portable across all major GUI platforms; including GTK, Windows, X11, and MacOS X.";
      buildType = "Make";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
        buildable = true;
        };
      };
    }