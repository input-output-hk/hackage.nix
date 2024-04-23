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
      specVersion = "1.18";
      identifier = { name = "language-css"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright Anton Kholomiov 2010, Tom Ellis 2020";
      maintainer = "Tom Ellis";
      author = "Anton Kholomiov";
      homepage = "https://github.com/tomjaguarpaw/language-css";
      url = "";
      synopsis = "CSS 2.1 syntax";
      description = "library for building and pretty printing CSS 2.1 code\ndeprecated";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }