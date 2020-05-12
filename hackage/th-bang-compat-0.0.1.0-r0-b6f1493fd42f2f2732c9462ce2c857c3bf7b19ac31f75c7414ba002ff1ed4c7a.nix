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
    flags = { template-haskell-210 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "th-bang-compat"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Compatibility for bang-type template";
      description = "This package provides compatible interfaces\nfor bang-type template";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }