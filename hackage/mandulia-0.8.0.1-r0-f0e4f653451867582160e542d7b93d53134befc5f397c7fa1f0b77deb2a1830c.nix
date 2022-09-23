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
    flags = { fast = false; sse4 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mandulia"; version = "0.8.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2010,2022  Claude Heiland-Allen <claude@mathr.co.uk>";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/mandulia";
      url = "";
      synopsis = "A zooming visualisation of the Mandelbrot Set as many Julia Sets.";
      description = "Mandulia provides a zooming visualisation of the Mandelbrot Set\nas many Julia Sets.  Featuring a profiled and optimized renderer,\nand a Lua configuration and scripting interface.\n\nMandulia supports additional compile-time flags for speed, but by\ndefault these are disabled because they don't work on all systems.\nThese flags are \"-ffast\" for miscellaneous optimizations, and\n\"-ffast -fSSE4\" to use SSE4 instructions too.\n\nChanges from \"mandulia-0.7\": fixed for current state of Hackage.\n\nQuick start: run \"mandula main\" and press the \"a\" key.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mandulia" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
            ];
          buildable = true;
          };
        };
      };
    }