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
      specVersion = "1.10";
      identifier = { name = "dependent-sum-template"; version = "0.1.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Obsidian Systems, LLC <maintainer@obsidian.systems>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/obsidiansystems/dependent-sum";
      url = "";
      synopsis = "Template Haskell code to generate instances of classes in dependent-sum package";
      description = "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-extras" or (errorHandler.buildDepError "th-extras"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "7.10"
          then false
          else true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "8.0"
            then false
            else true;
          };
        };
      };
    }