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
      specVersion = "2.4";
      identifier = { name = "defun-sop"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Defunctionalization helpers: lists";
      description = "This package provides term definitions for type families in \"DeFun.List\"\nusing 'NP' type from @sop-core@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
        ];
        buildable = true;
      };
    };
  }