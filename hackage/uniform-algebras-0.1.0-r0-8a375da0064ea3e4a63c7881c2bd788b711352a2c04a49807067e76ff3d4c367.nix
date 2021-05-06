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
      specVersion = "2.2";
      identifier = { name = "uniform-algebras"; version = "0.1.0"; };
      license = "GPL-2.0-only";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <uniform@gerastree.at>";
      author = "Andrew Frank";
      homepage = "";
      url = "";
      synopsis = "Pointless functions and a simplistic zero and monoid";
      description = "Simple algebras avoiding too much mathematical underpinning\n\n- zero with test isZero, notZero (not a semigroupoid)\nexports also Maybe and Either\n\n- pointless operations, e.g. tuples up to 4 or 5\n\n- ListForms (a monoid)\n\nPlease see the README on GitHub at <https://github.com/andrewufrank/uniform-algebras/readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }