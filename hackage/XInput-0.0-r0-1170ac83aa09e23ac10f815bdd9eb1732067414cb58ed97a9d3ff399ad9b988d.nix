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
      identifier = { name = "XInput"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Bindings for the DirectX XInput library.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          ];
        libs = [ (pkgs."xinput" or (errorHandler.sysDepError "xinput")) ];
        buildable = true;
        };
      };
    }