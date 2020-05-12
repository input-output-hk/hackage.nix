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
      identifier = { name = "kibro"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Web development framework.";
      description = "Web development framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fastcgi" or (errorHandler.buildDepError "fastcgi"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = {
        "kibro" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            ];
          buildable = true;
          };
        };
      };
    }