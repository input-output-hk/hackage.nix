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
      specVersion = "1.6";
      identifier = { name = "delimited-text"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Stefan Kersten 2008-2010";
      maintainer = "Stefan Kersten <sk@xdv.org>";
      author = "Stefan Kersten <sk@xdv.org>";
      homepage = "http://space.k-hornz.de/software/delimited-text";
      url = "";
      synopsis = "Parse character delimited textual data";
      description = "Parse character delimited textual data";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          ];
        buildable = true;
        };
      };
    }