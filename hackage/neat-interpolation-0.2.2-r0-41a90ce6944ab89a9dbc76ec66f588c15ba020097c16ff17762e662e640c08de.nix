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
      specVersion = "1.10";
      identifier = { name = "neat-interpolation"; version = "0.2.2"; };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/neat-interpolation";
      url = "";
      synopsis = "A quasiquoter for neat and simple multiline text interpolation";
      description = "NeatInterpolation provides a quasiquoter for producing strings\nwith a simple interpolation of input values.\nIt removes the excessive indentation from the input and\naccurately manages the indentation of all lines of interpolated variables.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "api-tests" = {
          depends = [
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
          buildable = true;
        };
      };
    };
  }