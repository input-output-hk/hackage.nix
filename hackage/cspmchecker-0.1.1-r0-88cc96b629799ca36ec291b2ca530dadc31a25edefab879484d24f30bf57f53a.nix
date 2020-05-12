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
      specVersion = "1.9.2";
      identifier = { name = "cspmchecker"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Thomas Gibson-Robinson";
      maintainer = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      author = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      homepage = "https://github.com/tomgr/libcspm";
      url = "";
      synopsis = "A command line type checker for CSPM files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cspmchecker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libcspm" or (errorHandler.buildDepError "libcspm"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }