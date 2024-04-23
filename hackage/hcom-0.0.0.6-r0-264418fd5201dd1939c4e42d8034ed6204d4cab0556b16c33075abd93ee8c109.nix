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
      identifier = { name = "hcom"; version = "0.0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Larsson <niklas@mm.st>";
      author = "";
      homepage = "https://github.com/melted/hcom";
      url = "";
      synopsis = "Haskell COM support library";
      description = "Support for writing COM\\/Automation clients in Haskell, and for\npackaging up your Haskell code behind a COM-callable veneer.\n\nSome examples of how to use the package can be found at <http://haskell.forkio.com/com-examples>\nThis is an updated fork of the `com` package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = pkgs.lib.optionals (system.isWindows) [
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
        ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
          (pkgs."advapi32" or (errorHandler.sysDepError "advapi32"))
        ];
        buildable = if system.isWindows then true else false;
      };
    };
  }