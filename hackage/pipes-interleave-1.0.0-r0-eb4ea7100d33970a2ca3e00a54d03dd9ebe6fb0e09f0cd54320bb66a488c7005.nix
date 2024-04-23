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
      identifier = { name = "pipes-interleave"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/pipes-interleave";
      url = "";
      synopsis = "Interleave and merge streams of elements";
      description = "Interleave and merge streams of elements";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
        ];
        buildable = true;
      };
    };
  }