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
      identifier = { name = "hnock"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.io";
      author = "Jared Tobin";
      homepage = "https://github.com/jtobin/hnock";
      url = "";
      synopsis = "A Nock interpreter.";
      description = "A Nock interpreter.\n\nFrom the shell, simply pipe Nock expressions into the hnock executable:\n\n> \$ echo '*[[[4 5] [6 14 15]] [0 7]]' | hnock\n> [14 15]\n\nFor playing around in GHCi, import the Nock library and use hnock to parse\nand evaluate Nock expressions:\n\n> *Nock> hnock \"*[[[4 5] [6 14 15]] [0 7]]\"\n> [14 15]\n\nTo evaluate raw nock Nouns, i.e. to compute nock(a) for some noun a, use the\n'nock' function:\n\n> *Nock> let expression = hnock \"[[[4 5] [6 14 15]] [0 7]]\"\n> *Nock> expression\n> [[[4 5] [6 [14 15]]] [0 7]]\n> *Nock> nock expression\n> [14 15]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "hnock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hnock" or (errorHandler.buildDepError "hnock"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hnock-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hnock" or (errorHandler.buildDepError "hnock"))
            ];
          buildable = true;
          };
        };
      };
    }