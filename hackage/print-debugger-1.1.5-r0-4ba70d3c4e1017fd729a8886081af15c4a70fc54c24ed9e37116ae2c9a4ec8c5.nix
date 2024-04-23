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
      specVersion = "1.10";
      identifier = { name = "print-debugger"; version = "1.1.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "johnmichaelreedfas@gmail.com";
      author = "John-Michael Reed";
      homepage = "https://github.com/JohnReedLOL/HaskellPrintDebugger";
      url = "";
      synopsis = "Debug print formatting library.";
      description = "Print debugging with stack trace for Haskell (formatted for ease \t                   of use). See screenshot: http://i.imgur.com/KCXYHNk.png";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }