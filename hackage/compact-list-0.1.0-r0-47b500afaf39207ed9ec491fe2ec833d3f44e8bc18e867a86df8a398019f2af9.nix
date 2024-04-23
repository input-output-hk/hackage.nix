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
      identifier = { name = "compact-list"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/compact-list";
      url = "";
      synopsis = "An append only list in a compact region";
      description = "If you hold on to a large data structure in garbage collected (GC) memory\nfor relatively longer times it puts undue pressure on GC, unnecessarily\nincreasing the work done by GC and also increasing the duration of GC\npauses. A 'CompactList' allows you to keep a large list in a Compact Region\nnot touched by GC, thus avoiding any GC overhead.  This is essentially like\na convenient in-memory append only file where you can write a list of\nHaskell values without having to marshall or serialize them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."compact-list" or (errorHandler.buildDepError "compact-list"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }