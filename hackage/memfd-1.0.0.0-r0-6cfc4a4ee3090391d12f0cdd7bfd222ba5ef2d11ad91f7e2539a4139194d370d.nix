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
      specVersion = "3.0";
      identifier = { name = "memfd"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2022 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/memfd";
      url = "";
      synopsis = "Open temporary anonymous Linux file handles";
      description = "\"memfd\" (__mem__ory __f__ile __d__escriptor) lets us open\npseudo-\"files\" that are not actually stored in the \"real\"\nfile system. This feature is only available on Linux.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }