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
      identifier = { name = "Tables"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nathanpisarski@gmail.com";
      author = "Nate Pisarski";
      homepage = "";
      url = "";
      synopsis = "A client for Quill databases";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Tables" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cookbook" or (errorHandler.buildDepError "cookbook"))
            ];
          buildable = true;
          };
        };
      };
    }