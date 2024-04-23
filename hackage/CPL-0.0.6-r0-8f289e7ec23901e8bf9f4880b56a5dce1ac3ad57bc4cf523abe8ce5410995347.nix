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
    flags = { readline = false; haskeline = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "CPL"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      description = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ] ++ (if flags.readline
            then [
              (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            ]
            else pkgs.lib.optional (flags.haskeline) (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline")));
          buildable = true;
        };
      };
    };
  }