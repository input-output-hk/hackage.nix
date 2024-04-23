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
      specVersion = "1.12";
      identifier = { name = "csound-controllers"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/csound-controllers#readme";
      url = "";
      synopsis = "MIDI controllers";
      description = "Please see the README on GitHub at <https://github.com/githubuser/csound-controllers#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."csound-expression" or (errorHandler.buildDepError "csound-expression"))
        ];
        buildable = true;
      };
      tests = {
        "csound-controllers-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."csound-controllers" or (errorHandler.buildDepError "csound-controllers"))
            (hsPkgs."csound-expression" or (errorHandler.buildDepError "csound-expression"))
          ];
          buildable = true;
        };
      };
    };
  }