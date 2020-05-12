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
    flags = { sse4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mandulia"; version = "0.6"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2010  Claude Heiland-Allen <claudiusmaximus@goto10.org>";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "http://gitorious.org/maximus/mandulia";
      url = "";
      synopsis = "A zooming visualisation of the Mandelbrot Set as many Julia Sets.";
      description = "Mandulia provides a zooming visualisation of the Mandelbrot Set\nas many Julia Sets.  Featuring a profiled and optimized renderer,\nand a Lua configuration and scripting interface.\n\nBy default Mandulia compiles using SSE4 instructions.  If your\nCPU does not support SSE4, you should add \"-f-SSE4\" to your\ncabal-install command line.\n\nChanges from \"mandulia-0.5\": the program help text now correctly\nreflects the implementation, thus avoiding confusion.";
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
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
            ];
          buildable = true;
          };
        };
      };
    }