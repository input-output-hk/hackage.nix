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
      identifier = { name = "epass"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>";
      author = "Andreas Baldeau";
      homepage = "http://github.com/baldo/epass";
      url = "";
      synopsis = "Baisc, Erlang-like message passing supporting sockets.";
      description = "This package provides Erlang-like mailboxes for message passing.\nIt also supports wrapping communication via e.g. sockets.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }