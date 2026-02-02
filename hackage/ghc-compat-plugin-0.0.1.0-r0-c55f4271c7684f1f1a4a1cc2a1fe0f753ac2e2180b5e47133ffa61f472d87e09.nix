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
    flags = { noisy-deprecations = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "ghc-compat-plugin"; version = "0.0.1.0"; };
      license = "AGPL-3.0-only";
      copyright = "2026 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/ghc-compat-plugin#readme";
      url = "";
      synopsis = "Eases support for multiple GHC versions";
      description = "Controls various GHC options and extensions to make compilation\nacross multiple versions easier, and to alert you to\nincompatibilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.10.1") ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0.1") (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th")));
        buildable = true;
      };
    };
  }