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
    flags = { hashable = true; binary = true; template-haskell = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nats"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/nats/";
      url = "";
      synopsis = "Natural numbers";
      description = "Natural numbers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.9") ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ (pkgs.lib).optional (flags.template-haskell) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable")));
        buildable = true;
        };
      };
    }