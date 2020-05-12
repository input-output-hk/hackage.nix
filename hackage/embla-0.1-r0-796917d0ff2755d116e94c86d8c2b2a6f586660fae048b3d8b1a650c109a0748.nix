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
      identifier = { name = "embla"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/embla";
      url = "";
      synopsis = "execute actions periodically while avoiding drift";
      description = "This package is intended for use cases when 'cron'\nis overkill, but the importance of avoiding drift\nis still there. No care is taken w.r.t. GC times.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          ];
        buildable = true;
        };
      };
    }