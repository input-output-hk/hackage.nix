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
      identifier = { name = "ghcprofview"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/ghcprofview-hs#readme";
      url = "";
      synopsis = "GHC .prof files viewer";
      description = "Please see the README on GitHub at <https://github.com/portnov/ghcprofview-hs#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghcprofview" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-prof" or (errorHandler.buildDepError "ghc-prof"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (errorHandler.buildDepError "regex-tdfa-text"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }