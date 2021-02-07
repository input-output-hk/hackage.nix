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
      specVersion = "1.18";
      identifier = { name = "lsfrom"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018,2021  Jens Petersen";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/lsfrom";
      url = "";
      synopsis = "List dir files starting from a specific name";
      description = "`lsfrom` lists files in a directory that start with\na particular sequence of characters and those after it\nwith respect to locale collation.\nThis can be useful for continuing a script on the files in a dir\nafter a failure, etc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lsfrom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            ];
          buildable = true;
          };
        };
      };
    }