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
      identifier = { name = "strict-concurrency"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 Don Stewart";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart <dons@galois.com>";
      homepage = "http://code.haskell.org/~dons/code/strict-concurrency";
      url = "";
      synopsis = "Strict concurrency abstractions";
      description = "This package provides strict versions of some standard Haskell\nconcurrency abstractions (MVars,Chans), which provide control\nover where evaluation takes place not offered by the default\nlazy types. This may be useful for deciding when and where\nevaluation occurs, leading to improved time or space use,\ndepending on the circumstances.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }