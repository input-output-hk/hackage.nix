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
      identifier = { name = "binembed-example"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "http://gitorious.org/binembed";
      url = "";
      synopsis = "Example project using binembed to embed data in object files.";
      description = "binembed-example prints out its source code, embedded into it\nat compile time using the \"binembed\" package.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "binembed-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binembed" or (errorHandler.buildDepError "binembed"))
            ];
          buildable = true;
          };
        };
      };
    }