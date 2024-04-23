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
      identifier = { name = "hcdt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/githubuser/hcdt#readme";
      url = "";
      synopsis = "2d Delaunay triangulation";
      description = "This library performs the constrained or unconstrained 2d Delaunay triangulation.\n\nIt uses the C++ library 'CDT'.\n\nFor examples, look the README file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
      };
    };
  }