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
      identifier = { name = "plur"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019 Joel Burget";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "";
      url = "";
      synopsis = "Plurality monad: Zero, one, or at least two.";
      description = "Often when counting you don't need an exact count, but only whether there are\ntwo things. Two examples:\n\nWhen searching for inhabitants of a type (implementations of a program), you\nwant to be able to tell whether there are (a) no possible inhabitants, (b) a\nunique inhabitant, or (c) multiple inhabitants.\n\nWhen displaying the name of a variable, if there's exactly one variable of a\ngiven name (\"a\") you can just use that name, but if there are multiples you\nmight use a unique id to disambiguate them (\"a1\" vs \"a2\").";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
      tests = {
        "Properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plur" or (errorHandler.buildDepError "plur"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
          ];
          buildable = true;
        };
      };
    };
  }