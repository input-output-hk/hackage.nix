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
      specVersion = "2.2";
      identifier = { name = "hfsevents"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stegeman@gmail.com";
      author = "Luite Stegeman";
      homepage = "http://github.com/luite/hfsevents";
      url = "";
      synopsis = "File/folder watching for OS X";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [ (pkgs."pthread" or (errorHandler.sysDepError "pthread")) ];
        frameworks = [ (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa")) ];
        buildable = if system.isOsx then true else false;
      };
    };
  }