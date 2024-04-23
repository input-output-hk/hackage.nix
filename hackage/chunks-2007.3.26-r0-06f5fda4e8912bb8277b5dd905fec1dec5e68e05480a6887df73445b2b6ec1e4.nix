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
      specVersion = "1.0";
      identifier = { name = "chunks"; version = "2007.3.26"; };
      license = "LicenseRef-LGPL";
      copyright = "Matthew Sackman";
      maintainer = "matthew@wellquite.org";
      author = "Matthew Sackman";
      homepage = "http://www.wellquite.org/chunks/";
      url = "";
      synopsis = "Simple template library with static safety";
      description = "This library supports templates inspired by the Perl HTML::Chunks\nmodule, but this Haskell implementation checks at compile time that\nthe templates used exist and are used correctly. The templates are\ncombined within the compiled Haskell, removing the dependency on the\nexternal template file.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }