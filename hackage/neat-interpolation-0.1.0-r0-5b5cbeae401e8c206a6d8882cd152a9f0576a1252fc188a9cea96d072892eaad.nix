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
      identifier = { name = "neat-interpolation"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov";
      homepage = "https://github.com/nikita-volkov/neat-interpolation";
      url = "";
      synopsis = "A quasiquoter for neat and simple multiline text interpolation";
      description = "NeatInterpolation provides a quasiquoter for producing `Text` data with a simple interpolation of input values. It removes the excessive indentation from the input text and accurately manages the indentation of all lines of interpolated variables. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }