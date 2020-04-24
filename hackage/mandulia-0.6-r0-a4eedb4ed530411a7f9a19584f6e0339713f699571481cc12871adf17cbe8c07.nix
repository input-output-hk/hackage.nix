{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
            ];
          buildable = true;
          };
        };
      };
    }