{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lambda-toolbox"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://scravy.de/blog/2012-02-20/a-lambda-toolbox-in-haskell.htm";
      url = "";
      synopsis = "An application to work with the lambda calculus (for learning)";
      description = "lambda-toolbox allows one to reduce lambda expressions step by step,\nperforming alpha-, beta-, and eta-reduction. It's a tool intended\nfor beginners to play with the lambda calculus.\n\n> \$ lambda-toolbox -h\n\nwill tell you everything relevant.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "simplex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }