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
      specVersion = "1.8";
      identifier = { name = "pretty-compact"; version = "2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jean-Philippe Bernardy <jeanphilippe.bernardy@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pretty-printing library";
      description = "This package contains a pretty-printing library, a set of API's\nthat provides a way to easily print out text in a consistent\nformat of your choosing. This is useful for compilers and related\ntools.\n\nThis library produces more compact outputs than both\nWadler-Leijen or Hughes-PJ algorithms, at the expense of computational ressources.\nThe core API is based on Hughes-PJ, but some combinators of the Leijen API are implemented as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      benchmarks = {
        "pretty-comparison" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-compact" or (errorHandler.buildDepError "pretty-compact"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }