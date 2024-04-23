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
      identifier = { name = "always"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2021 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "";
      url = "";
      synopsis = "provides a typeclass that is always satisfied";
      description = "provides a typeclass that is always satisfied. See documentation for more details.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }