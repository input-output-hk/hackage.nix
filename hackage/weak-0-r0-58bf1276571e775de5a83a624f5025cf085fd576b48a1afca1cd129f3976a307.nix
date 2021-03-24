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
      identifier = { name = "weak"; version = "0"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2019 Edward Kmett";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "https://github.com/ekmett/codex/tree/master/weak#readme";
      url = "";
      synopsis = "Weak pointer extas";
      description = "Better weak pointer support for IORefs and ForeignPtrs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }