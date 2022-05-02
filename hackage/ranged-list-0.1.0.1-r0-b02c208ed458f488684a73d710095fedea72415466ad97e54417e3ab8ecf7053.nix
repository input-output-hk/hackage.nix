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
      identifier = { name = "ranged-list"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Yoshikuni Jujo";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/ranged-list#readme";
      url = "";
      synopsis = "The list like structure whose length or range of length can be specified";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/ranged-list#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."typecheck-plugin-nat-simple" or (errorHandler.buildDepError "typecheck-plugin-nat-simple"))
          ];
        buildable = true;
        };
      tests = {
        "ranged-list-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."ranged-list" or (errorHandler.buildDepError "ranged-list"))
            (hsPkgs."typecheck-plugin-nat-simple" or (errorHandler.buildDepError "typecheck-plugin-nat-simple"))
            ];
          buildable = true;
          };
        "ranged-list-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ranged-list" or (errorHandler.buildDepError "ranged-list"))
            (hsPkgs."typecheck-plugin-nat-simple" or (errorHandler.buildDepError "typecheck-plugin-nat-simple"))
            ];
          buildable = true;
          };
        };
      };
    }