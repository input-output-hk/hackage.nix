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
      identifier = { name = "Theora"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "pierreetienne.meunier@gmail.com";
      author = "Pierre-Etienne Meunier";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Video Compression Library (see http://theora.org)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."ogg" or (errorHandler.sysDepError "ogg"))
          (pkgs."theora" or (errorHandler.sysDepError "theora"))
          ];
        buildable = true;
        };
      };
    }