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
      identifier = { name = "linear-accelerate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Charles Durham";
      homepage = "http://github.com/ekmett/linear-accelerate/";
      url = "";
      synopsis = "Instances to use linear vector spaces on accelerate backends";
      description = "Instances to use linear vector spaces on accelerate backends";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      };
    }