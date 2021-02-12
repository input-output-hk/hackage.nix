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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "happy"; version = "1.18.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) Andy Gill, Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Andy Gill and Simon Marlow";
      homepage = "http://www.haskell.org/happy/";
      url = "";
      synopsis = "Happy is a parser generator for Haskell";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "happy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          build-tools = [
            (hsPkgs.buildPackages.perl.components.exes.perl or (pkgs.buildPackages.perl or (errorHandler.buildToolDepError "perl:perl")))
            ];
          buildable = true;
          };
        };
      };
    }