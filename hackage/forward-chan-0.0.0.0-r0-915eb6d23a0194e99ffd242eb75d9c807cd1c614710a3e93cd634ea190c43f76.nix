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
      specVersion = "1.8";
      identifier = { name = "forward-chan"; version = "0.0.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "matt@mirman.com";
      author = "Matthew Mirman";
      homepage = "http://github.com/mmirman/forward-chan";
      url = "";
      synopsis = "Concurrent channels with a forwarding primitive";
      description = "An implementation of the forward primitive, useful for proof terms from the sequent caluclus formulation of linear logic\n\nSee <http://github.com/mmirman/forward-chan> and <http://www.cs.cmu.edu/~fp/papers/tldi12.pdf> for more information on this primitive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }