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
      specVersion = "2.2";
      identifier = { name = "ki-unlifted"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020-2022 Mitchell Rosen, Travis Staton";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/awkward-squad/ki";
      url = "";
      synopsis = "A lightweight structured-concurrency library";
      description = "A lightweight structured-concurrency library.\n\nFor a specialised variant of this API that does not use\n@<https://hackage.haskell.org/package/unliftio-core unliftio-core>@, see\n@<https://hackage.haskell.org/package/ki ki>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
    };
  }