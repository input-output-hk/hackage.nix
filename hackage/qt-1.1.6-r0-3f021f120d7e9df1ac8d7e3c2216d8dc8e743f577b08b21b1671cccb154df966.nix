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
      specVersion = "1.6";
      identifier = { name = "qt"; version = "1.1.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
      author = "David Harley";
      homepage = "http://github.com/keerastudios/hsQt";
      url = "";
      synopsis = "Qt bindings";
      description = "Qt bindings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
        ];
        libs = [
          (pkgs."qtc_core" or (errorHandler.sysDepError "qtc_core"))
          (pkgs."qtc_gui" or (errorHandler.sysDepError "qtc_gui"))
          (pkgs."qtc_network" or (errorHandler.sysDepError "qtc_network"))
          (pkgs."qtc_opengl" or (errorHandler.sysDepError "qtc_opengl"))
          (pkgs."qtc_tools" or (errorHandler.sysDepError "qtc_tools"))
          (pkgs."qtc_script" or (errorHandler.sysDepError "qtc_script"))
        ];
        buildable = true;
      };
    };
  }