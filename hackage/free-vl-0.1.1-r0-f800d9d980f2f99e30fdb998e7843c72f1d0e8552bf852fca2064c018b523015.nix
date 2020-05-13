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
      identifier = { name = "free-vl"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Aaron Levin";
      maintainer = "Aaron Levin <aaron.michael.benjamin.levin@gmail.com>";
      author = "Aaron Levin";
      homepage = "http://github.com/aaronlevin/free-vl";
      url = "";
      synopsis = "van Laarhoven encoded Free Monad with Extensible Effects";
      description = "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.\n\nFor more information on the van Laarhoven Free Monads, including examples,\nplease see the following blog posts:\nInitial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>\nAdding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free-vl" or (errorHandler.buildDepError "free-vl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "free-vl-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free-vl" or (errorHandler.buildDepError "free-vl"))
            ];
          buildable = true;
          };
        };
      };
    }