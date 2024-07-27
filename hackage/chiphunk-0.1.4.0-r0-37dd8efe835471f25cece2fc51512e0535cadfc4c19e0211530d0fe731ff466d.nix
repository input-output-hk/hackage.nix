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
    flags = { library-only = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "chiphunk"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com, lemmih@gmail.com";
      author = "Cthulhu";
      homepage = "https://github.com/CthulhuDen/chiphunk#readme";
      url = "";
      synopsis = "Haskell bindings for Chipmunk2D physics engine";
      description = "Please see the README on GitHub at <https://github.com/CthulhuDen/chiphunk#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "chiphunk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (!flags.library-only) [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."chiphunk" or (errorHandler.buildDepError "chiphunk"))
            (hsPkgs."nanovg" or (errorHandler.buildDepError "nanovg"))
            (hsPkgs."nanovg-simple" or (errorHandler.buildDepError "nanovg-simple"))
          ];
          buildable = if flags.library-only then false else true;
        };
      };
    };
  }