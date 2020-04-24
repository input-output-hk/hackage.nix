{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sse4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mandulia"; version = "0.4"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2010  Claude Heiland-Allen <claudiusmaximus@goto10.org>";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "http://gitorious.org/maximus/mandulia";
      url = "";
      synopsis = "A zooming visualisation of the Mandelbrot Set as many Julia Sets.";
      description = "Mandulia provides a zooming visualisation of the Mandelbrot Set\nas many Julia Sets.  Featuring a profiled and optimized renderer,\nand a Lua configuration and scripting interface.";
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