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
      identifier = { name = "primitive-stablename"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/primitive-stablename";
      url = "";
      synopsis = "primitive operations on StableNames";
      description = "Primitive operations on @'Data.Primitive.StableName'@s. This differs from the module\n'System.Mem.StableName', in that it works in 'Control.Monad.ST.ST', 'IO', and any monad\ntransformer stack built on top of either. It is recommended that users\nread the documentation of 'System.Mem.StableName' to learn more about\nthe properties of @'Data.Primitive.StableName'@s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }