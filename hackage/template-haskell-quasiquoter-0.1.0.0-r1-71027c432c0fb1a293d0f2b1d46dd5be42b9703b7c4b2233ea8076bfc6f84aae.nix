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
      identifier = {
        name = "template-haskell-quasiquoter";
        version = "0.1.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "template-haskell-quasiquoter Contributors";
      maintainer = "Teo Camarasu <teofilcamarasu@gmail.com>, GHC developers <ghc-devs@haskell.org>";
      author = "Teo Camarasu";
      homepage = "";
      url = "";
      synopsis = "The 'QuasiQuoter' interface.";
      description = "The stable home of TemplateHaskell's 'QuasiQuoter' interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if compiler.isGhc && compiler.version.ge "9.12"
          then [
            (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          ]
          else [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ]);
        buildable = true;
      };
    };
  }