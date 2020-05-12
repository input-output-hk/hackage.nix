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
      identifier = { name = "change-monger"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern <gwern0@gmail.com>";
      author = "Gwern";
      homepage = "";
      url = "";
      synopsis = "Parse VCS changelogs into ChangeLogs";
      description = "change-monger is intended to allow you to extract\nthe revision history from various VCSes like Darcs,\nand save them as a ChangeLog; particularly important\nis being able to extract the summaries for all patches\nsince the last release.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "change-monger" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }