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
      identifier = { name = "smawk"; version = "0"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2019 Edward Kmett";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "https://github.com/ekmett/codex/tree/master/smawk#readme";
      url = "";
      synopsis = "Linear time row minima for totally monotone matrices";
      description = "This implements the SMAWK algorithm by Peter Shor, Shlomo Moran,\nAlok Aggarwal, Robert Wilber and Maria Klawe for finding the minimum\nvalue in each row of an implicitly defined totally monotone matrix.\n\nThis has many applications in computational geometry, such as finding\nthe farthest point from each point in a convex polygon, finding\noptimal enclosing polygon. It can also be used to implement paragraph\nline breaking in a manner analogous to Knuth and Platt, but in linear\ntime. It also has uses in RNA secondary structure prediction, various\nsequence alignment problems, construction of prefix codes, image\nthresholding, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }