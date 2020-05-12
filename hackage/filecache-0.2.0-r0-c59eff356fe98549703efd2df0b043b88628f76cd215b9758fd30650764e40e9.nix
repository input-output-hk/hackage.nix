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
      specVersion = "1.8";
      identifier = { name = "filecache"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net/";
      url = "";
      synopsis = "A Linux-only cache system associating values to files. The values are discarded when the files are modified.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
          (hsPkgs."strict-base-types" or (errorHandler.buildDepError "strict-base-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }