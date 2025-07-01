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
      specVersion = "3.0";
      identifier = { name = "stats-monad"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shinghin.ho21@imperial.ac.uk";
      author = "Shing Hin Ho";
      homepage = "https://github.com/shinghinho/stats-monad";
      url = "";
      synopsis = "A discrete probability monad with statistics";
      description = "This package implements an unnormalized distribution monad `P`\ndesigned for discrete probabilistic computations. The inference is \nexact by enumerating all possibilities, which means it is slow and \nis not meant for big programs. However, the ability to enumerate\nover the support of a program means we can provide primitives for \ncomputing statistical properties such as independence/moments of \nrandom variables.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }