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
      specVersion = "1.20";
      identifier = { name = "ngx-export"; version = "1.7.10.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2026 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "https://github.com/lyokha/nginx-haskell-module";
      url = "";
      synopsis = "Helper module for Nginx Haskell module";
      description = "Helper module for\n<https://github.com/lyokha/nginx-haskell-module Nginx Haskell module>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }