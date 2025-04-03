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
    flags = { example = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "open-browser"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@pilgrem.com";
      author = "rightfold";
      homepage = "https://github.com/mpilgrem/open-browser";
      url = "";
      synopsis = "Open a web browser from Haskell";
      description = "Open a web browser from Haskell. Windows, macOS, Linux and BSD are supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else if system.isOsx
            then [
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ]
            else pkgs.lib.optional (system.isLinux || system.isFreebsd || system.isOpenbsd || system.isNetbsd) (hsPkgs."process" or (errorHandler.buildDepError "process")));
        buildable = true;
      };
      exes = {
        "open-browser-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
          ];
          buildable = if !flags.example then false else true;
        };
      };
    };
  }