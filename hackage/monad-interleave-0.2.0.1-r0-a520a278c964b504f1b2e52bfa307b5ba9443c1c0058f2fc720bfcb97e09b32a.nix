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
      identifier = { name = "monad-interleave"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009. Patrick Perry <patperry@stanford.edu>\n(c) 2022. Sergey Vinokurov <serg.foo@gmail.com>";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Patrick Perry";
      homepage = "https://github.com/sergv/monad-interleave";
      url = "";
      synopsis = "Monads with an unsaveInterleaveIO-like operation.";
      description = "A type class for monads that have an \\\"unsafeInterleave\\\" operation.\nInstances are provided for IO and both strict and lazy ST.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }