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
      identifier = { name = "errno"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wchogg@gmail.com ";
      author = "Creighton Hogg";
      homepage = "";
      url = "";
      synopsis = "a FFI utility";
      description = "errno is a small utility to supplement the FFI.\nMany C functions will return a special Int if an error\nhas occurred, and the withErrno* functions allow you\nto lift them into the ErrorT String transformer.\nI found this in some cases useful for when I wanted\nto handle errors from both C & Haskell on equal\nfooting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }