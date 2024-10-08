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
      identifier = { name = "seal-module"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Joachim Breitner ";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Template Haskell support for global configuration data";
      description = "A template haskell function is provided that allows the\nprogrammer to write a module as if configuration values\nwere global constants. The exported function then expect\nthose configuration values as extra parameters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }