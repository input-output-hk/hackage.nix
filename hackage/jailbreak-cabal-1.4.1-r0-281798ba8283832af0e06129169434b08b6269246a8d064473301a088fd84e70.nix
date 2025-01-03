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
    flags = { cabal-syntax = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "jailbreak-cabal"; version = "1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sternenseemann@systemli.org";
      author = "Peter Simons, Jeremy Shaw, Joel Taylor, Kosyrev Serge, Nikolay Amiantov, aszlig";
      homepage = "https://github.com/NixOS/jailbreak-cabal";
      url = "";
      synopsis = "Strip version restrictions from Cabal files";
      description = "Strip version restrictions from build dependencies in Cabal files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jailbreak-cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          ];
          buildable = true;
        };
      };
    };
  }