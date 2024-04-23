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
      identifier = { name = "egison-quote"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "kuwahara111011@gmail.com";
      author = "Takuya Kuwahara";
      homepage = "https://github.com/xenophobia/Egison-Quote";
      url = "";
      synopsis = "A quasi quotes for using Egison expression in Haskell code";
      description = "A quasi quotes for using Egison expression in Haskell code.\nEgison is a purely functional language featured strong pattern matching faculty.\nThis package enable us to use (restricted) Egison expression in Haskell source code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }