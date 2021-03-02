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
      specVersion = "1.24";
      identifier = { name = "eternal"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikhail Pukhlikov <cynede@gentoo.org>";
      author = "Mikhail Pukhlikov";
      homepage = "";
      url = "";
      synopsis = "everything breaking the Fairbairn threshold";
      description = "Everything breaking the Fairbairn threshold\nbut in the same time usable in other projects";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          ];
        buildable = true;
        };
      };
    }