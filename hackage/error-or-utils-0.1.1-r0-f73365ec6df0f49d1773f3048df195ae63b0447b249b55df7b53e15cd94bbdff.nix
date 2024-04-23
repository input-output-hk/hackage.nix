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
      identifier = { name = "error-or-utils"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Kamil Dworakowski";
      maintainer = "kamil@dworakowski.name";
      author = "Kamil Dworakowski";
      homepage = "https://github.com/luntain/error-or-bundle/blob/master/error-or-utils#readme";
      url = "";
      synopsis = "Utilities using ErrorOr datatype";
      description = "Builds on the error type defined in the error-or package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."error-or" or (errorHandler.buildDepError "error-or"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }