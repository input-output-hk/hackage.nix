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
      specVersion = "1.12";
      identifier = { name = "ghc-clippy-plugin"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Artur Gajowy";
      maintainer = "artur.gajowy@gmail.com";
      author = "Artur Gajowy";
      homepage = "https://github.com/ArturGajowy/ghc-clippy-plugin#readme";
      url = "";
      synopsis = "Override GHC error messages to the user's liking";
      description = "Please see the README on GitHub at <https://github.com/ArturGajowy/ghc-clippy-plugin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."text-regex-replace" or (errorHandler.buildDepError "text-regex-replace"))
          ];
        buildable = true;
        };
      };
    }