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
      identifier = { name = "gw"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/gw";
      url = "";
      synopsis = "ghcWithPackages cmdline util";
      description = "ghcWithPackages cmdline util. supports:\n\n* multiple ghc versions\n\n* pure/impure nix-shell\n\n* entering shell with multiple packages available";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }