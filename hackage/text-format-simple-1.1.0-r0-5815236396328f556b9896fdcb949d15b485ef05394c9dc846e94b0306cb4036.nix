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
      specVersion = "1.8";
      identifier = { name = "text-format-simple"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Bespalov <bespalovdn@gmail.com>";
      author = "Dmitry Bespalov";
      homepage = "";
      url = "";
      synopsis = "Simple text formatting library.";
      description = "Tiny library dedicated for text formating in C# style.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
        buildable = true;
        };
      };
    }