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
      specVersion = "2.4";
      identifier = { name = "error"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "2021 Profpatsch";
      maintainer = "Profpatsch <mail@profpatsch.de>";
      author = "Profpatsch";
      homepage = "https://github.com/Profpatsch/error";
      url = "";
      synopsis = "The canonical error type";
      description = "A canonical `Error` type, which provides a way to turn an error string into an `Error`, add context to an `Error`, and pretty print the `Error` for displaying it to users.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }