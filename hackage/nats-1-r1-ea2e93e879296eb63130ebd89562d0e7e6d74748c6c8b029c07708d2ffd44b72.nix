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
    flags = { hashable = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nats"; version = "1"; };
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
        depends = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.9")) ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable")));
        buildable = true;
      };
    };
  }