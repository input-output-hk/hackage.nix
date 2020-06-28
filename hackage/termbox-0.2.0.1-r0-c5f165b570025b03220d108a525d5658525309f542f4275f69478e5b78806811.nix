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
    flags = { build-examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "termbox"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2020, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/termbox";
      url = "";
      synopsis = "termbox bindings";
      description = "This package provides a thin wrapper around @termbox v1.1.2@, a simple C\nlibrary for writing text-based user interfaces: <https://github.com/nsf/termbox>\n\nThe full source of @termbox v1.1.2@ (1000 lines of C) is bundled; you do\nnot need to install any system packages to use this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "termbox-example-colors" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termbox" or (errorHandler.buildDepError "termbox"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }