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
      specVersion = "1.10";
      identifier = { name = "eq"; version = "4.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/eq/";
      url = "";
      synopsis = "Leibnizian equality";
      description = "Leibnizian equality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."type-equality" or (errorHandler.buildDepError "type-equality"));
        buildable = true;
        };
      };
    }