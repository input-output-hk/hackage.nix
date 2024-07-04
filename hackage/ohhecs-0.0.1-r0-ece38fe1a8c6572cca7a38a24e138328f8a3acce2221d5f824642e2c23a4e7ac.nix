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
    flags = { with_polysemy = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "ohhecs"; version = "0.0.1"; };
      license = "AGPL-3.0-or-later";
      copyright = "2020- Sophie Taylor";
      maintainer = "sophie@spacekitteh.moe";
      author = "Sophie Taylor";
      homepage = "";
      url = "";
      synopsis = "An Entity-Component-Systems engine core.";
      description = "Please see the README on GitLab at <https://gitlab.com/spacekitteh/spaceRL#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."byte-order" or (errorHandler.buildDepError "byte-order"))
          (hsPkgs."assert-failure" or (errorHandler.buildDepError "assert-failure"))
          (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."ordered-containers" or (errorHandler.buildDepError "ordered-containers"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-picklers" or (errorHandler.buildDepError "xml-picklers"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ] ++ pkgs.lib.optionals (flags.with_polysemy) [
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
        ];
        buildable = true;
      };
    };
  }