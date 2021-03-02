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
      specVersion = "1.0";
      identifier = { name = "HRay"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "boegel <kenneth [dot] hoste [at] elis [dot] ugent [dot] be>";
      author = "boegel";
      homepage = "http://trappist.elis.ugent.be/~kehoste/Haskell/HRay/";
      url = "";
      synopsis = "Haskell raytracer";
      description = "HRay is a ray tracing application written in Haskell as part of my\nthesis at Ghent University. It's quite simple for now, but I'll probably\nkeep on working on it in the near future.\n\nFor more information, see the homepage or the Haskell wiki entry:\n<http://haskell.org/haskellwiki/HRay>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HRay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            ];
          buildable = true;
          };
        };
      };
    }