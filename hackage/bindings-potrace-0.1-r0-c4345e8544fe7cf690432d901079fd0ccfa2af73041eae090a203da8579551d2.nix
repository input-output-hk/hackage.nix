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
      identifier = { name = "bindings-potrace"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rwbarton@gmail.com";
      author = "Reid Barton";
      homepage = "https://github.com/rwbarton/bindings-potrace";
      url = "";
      synopsis = "Low-level bindings to the potrace bitmap tracing library";
      description = "This package contains low-level bindings to potrace, a library for\ntracing bitmap images. Potrace is available at\n<http://potrace.sourceforge.net/>.\n\nThese bindings are automatically generated using bindings-DSL.\nFor a higher-level, friendlier set of potrace bindings, see\n<http://hackage.haskell.org/package/potrace>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        libs = [
          (pkgs."potrace" or (errorHandler.sysDepError "potrace"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          ];
        buildable = true;
        };
      };
    }