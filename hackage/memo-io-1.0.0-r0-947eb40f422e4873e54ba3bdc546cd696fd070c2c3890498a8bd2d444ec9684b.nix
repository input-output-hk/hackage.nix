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
    flags = { global-io = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "memo-io"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
      author = "Brandon Chinn <brandonchinn178@gmail.com>";
      homepage = "https://github.com/brandonchinn178/memo-io#readme";
      url = "";
      synopsis = "Memoize and global IO utilities.";
      description = "Memoize and global IO utilities. See README for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (flags.global-io) ([
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim")));
        buildable = if flags.global-io
          then if compiler.isGhc && compiler.version.lt "8.2.1"
            then false
            else true
          else true;
      };
      tests = {
        "example-memo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memo-io" or (errorHandler.buildDepError "memo-io"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "example-global" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memo-io" or (errorHandler.buildDepError "memo-io"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.global-io then false else true;
        };
      };
    };
  }