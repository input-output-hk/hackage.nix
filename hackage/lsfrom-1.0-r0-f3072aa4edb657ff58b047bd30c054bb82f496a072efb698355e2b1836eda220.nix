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
      specVersion = "2.0";
      identifier = { name = "lsfrom"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018,2021-2024  Jens Petersen";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/lsfrom";
      url = "";
      synopsis = "List directory files starting from a specific name";
      description = "`lsfrom` lists the entries of a directory starting from\na particular file and then the files after it\nwith respect to locale collation ordering.\nThis can be useful for example for continuing a command or script\nin a directory after a failure.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lsfrom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
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
          build-tools = [
            (hsPkgs.buildPackages.lsfrom.components.exes.lsfrom or (pkgs.buildPackages.lsfrom or (errorHandler.buildToolDepError "lsfrom:lsfrom")))
            ];
          buildable = true;
          };
        };
      };
    }