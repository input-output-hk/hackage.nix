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
      identifier = { name = "resistor-cube"; version = "0.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/resistor-cube";
      url = "";
      synopsis = "Compute total resistance of a cube of resistors";
      description = "This is an example of how to compute the total resistance\nof a non-trivial circuit of resistors.\nIt demonstrates how to build the necessary matrix.\nWe obtain the voltages and currents\nby solving simultaneous linear equations according to this matrix.\n\n* For an explanation see <http://code.henning-thielemann.de/bob2019/main.pdf>.\n\n* For a generalized version see the tests of the @linear-circuit@ package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "resistor-cube" = {
          depends = [
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }