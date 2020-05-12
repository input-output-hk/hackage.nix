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
    flags = { without-pcre = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ignore"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/ignore";
      url = "";
      synopsis = "Handle ignore files of different VCSes";
      description = "Library and tiny tool for working with ignore files of different version control systems";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ] ++ (pkgs.lib).optional (!flags.without-pcre) (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"));
        buildable = true;
        };
      exes = {
        "ignore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ignore" or (errorHandler.buildDepError "ignore"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ignore-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ignore" or (errorHandler.buildDepError "ignore"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            ];
          buildable = true;
          };
        };
      };
    }