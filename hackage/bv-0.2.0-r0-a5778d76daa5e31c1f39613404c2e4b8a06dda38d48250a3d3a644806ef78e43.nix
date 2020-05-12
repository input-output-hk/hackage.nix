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
      specVersion = "1.6";
      identifier = { name = "bv"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2013, Iago Abal\n2012, University of Minho";
      maintainer = "Iago Abal <iago.abal@gmail.com>";
      author = "Iago Abal <iago.abal@gmail.com>";
      homepage = "http://bitbucket.org/iago/bv-haskell";
      url = "";
      synopsis = "Bit-vectors library";
      description = "Bit-vectors implemented as a wrapper over integers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }