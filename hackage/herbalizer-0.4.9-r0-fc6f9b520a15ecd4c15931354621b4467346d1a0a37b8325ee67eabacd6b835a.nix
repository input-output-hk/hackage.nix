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
      specVersion = "1.6";
      identifier = { name = "herbalizer"; version = "0.4.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/herbalizer";
      url = "";
      synopsis = "HAML to ERB translator";
      description = "HAML to ERB translator";
      buildType = "Simple";
      };
    components = {
      exes = {
        "herbalizer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."indents" or (errorHandler.buildDepError "indents"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }