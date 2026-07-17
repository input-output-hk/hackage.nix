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
      identifier = { name = "exp-extended"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015,2016,2019,2020 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/exp-extended";
      url = "";
      synopsis = "floating point with extended exponent range";
      description = "A small library to extend floating point types with a larger\nexponent, so that you can represent really huge or really tiny\nnumbers without overflow to infinity or underflow to zero.\n\n> > unExpExtended . log . exp .          expExtended' $ 1000\n> 1000.0\n> >                 log . exp                         $ 1000\n> Infinity\n> > unExpExtended . log . exp . negate . expExtended' $ 1000\n> -1000.0\n> >                 log . exp . negate                $ 1000\n> -Infinity\n\nVersion 0.2 has lighter dependencies and fixes an overflow bug in expm1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }