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
      identifier = { name = "open-browser"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold@gmail.com";
      author = "rightfold";
      homepage = "https://github.com/rightfold/open-browser";
      url = "";
      synopsis = "Open a web browser from Haskell.";
      description = "Open a web browser from Haskell.\nCurrently BSD, Linux, OS X and Windows are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
            ];
          buildable = true;
          };
        };
      };
    }