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
    flags = { optimize = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "categories"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2010, Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/categories";
      url = "";
      synopsis = "Categories";
      description = "Categories";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        buildable = true;
      };
    };
  }