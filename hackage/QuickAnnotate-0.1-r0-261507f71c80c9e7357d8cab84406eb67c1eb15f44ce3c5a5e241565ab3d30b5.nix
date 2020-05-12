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
      identifier = { name = "QuickAnnotate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sh.najd@gmail.com";
      author = "Shayan Najd";
      homepage = "darcs repository    http://code.haskell.org/QuickAnnotate/";
      url = "";
      synopsis = "Annotation Framework";
      description = "A framework introducing annotation by preprocessing ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "qapp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }