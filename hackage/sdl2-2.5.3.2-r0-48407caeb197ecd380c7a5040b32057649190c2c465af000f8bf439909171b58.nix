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
    flags = {
      examples = false;
      opengl-example = false;
      no-linear = false;
      recent-ish = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2"; version = "2.5.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2017  Gabríel Arthúr Pétursson";
      maintainer = "gabriel@system.is, ollie@ocharles.org.uk";
      author = "Gabríel Arthúr Pétursson, Oliver Charles";
      homepage = "";
      url = "";
      synopsis = "Both high- and low-level bindings to the SDL library (version 2.0.6+).";
      description = "This package contains bindings to the SDL 2 library, in both high- and\nlow-level forms:\n\nThe 'SDL' namespace contains high-level bindings, where enumerations are split\ninto sum types, and we perform automatic error-checking.\n\nThe 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into\nHaskell FFI calls. As such, this does not contain sum types nor error\nchecking. Thus this namespace is suitable for building your own abstraction\nover SDL, but is not recommended for day-to-day programming.\n\nRead \"SDL\" for a getting started guide.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!flags.no-linear) (hsPkgs."linear" or (errorHandler.buildDepError "linear"));
        libs = [ (pkgs."SDL2" or (errorHandler.sysDepError "SDL2")) ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
          ];
        buildable = true;
        };
      exes = {
        "lazyfoo-lesson-01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-03" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-04" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-05" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-07" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-08" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-09" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-10" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-11" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-12" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-13" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-14" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-15" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-17" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-18" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-19" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lazyfoo-lesson-20" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = false;
          };
        "lazyfoo-lesson-43" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "twinklebear-lesson-01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "twinklebear-lesson-02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "twinklebear-lesson-04" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "twinklebear-lesson-04a" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "twinklebear-lesson-05" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "audio-example" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "eventwatch-example" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "userevent-example" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.examples then true else false;
          };
        "opengl-example" = {
          depends = (pkgs.lib).optionals (flags.opengl-example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = if flags.opengl-example then true else false;
          };
        };
      tests = {
        "sdl-space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }