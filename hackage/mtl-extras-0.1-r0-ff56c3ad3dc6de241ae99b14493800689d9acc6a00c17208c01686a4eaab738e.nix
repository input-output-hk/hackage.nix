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
      identifier = { name = "mtl-extras"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Index Int <vlad.z.4096@gmail.com>";
      author = "Index Int";
      homepage = "";
      url = "";
      synopsis = "Higher order versions of MTL classes";
      description = "Higher order versions of MTL classes to ease programming with polymorphic recursion and reduce UndecidableInstances.\n\nSee <http://flint.cs.yale.edu/trifonov/papers/sqcc.pdf> for further discussion of the approach taken here.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }