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
      specVersion = "1.24";
      identifier = { name = "tuple-ops"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jiasen Wu <jiasenwu@hotmail.com>";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/tuple-ops";
      url = "";
      synopsis = "various operations on n-ary tuples via GHC.Generics";
      description = "Uncons operation on n-ary tuples";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."type-combinators" or (errorHandler.buildDepError "type-combinators"))
        ];
        buildable = true;
      };
    };
  }