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
      identifier = { name = "th-orphans"; version = "0.11.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Orphan instances for TH datatypes";
      description = "Orphan instances for TH datatypes.  In particular, instances\nfor Ord and Lift, as well as a few missing Show / Eq.  These\ninstances used to live in haskell-src-meta, and that's where\nthe version number started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."th-reify-many" or (errorHandler.buildDepError "th-reify-many"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }