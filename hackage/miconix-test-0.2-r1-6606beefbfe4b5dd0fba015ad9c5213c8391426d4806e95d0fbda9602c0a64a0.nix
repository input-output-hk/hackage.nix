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
      identifier = { name = "miconix-test"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miak.enina@gmail.com";
      author = "laypod Une";
      homepage = "";
      url = "";
      synopsis = "a.";
      description = "a.\n\n<<https://i.imgur.com/y6Dt9ou.gif>>\n\n<https://t.co/IzpPbQnMgO OSLO VECTIZE>\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "test1" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }