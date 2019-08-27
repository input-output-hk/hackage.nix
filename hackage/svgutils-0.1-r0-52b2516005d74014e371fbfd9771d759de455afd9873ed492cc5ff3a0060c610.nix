let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "svgutils"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright Neil Brown, 2010.";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "https://patch-tag.com/r/twistedsquare/svgutils/home";
      url = "";
      synopsis = "Helper functions for dealing with SVG files";
      description = "A library for performing simple manipulations with SVG\nfiles, primarily tiling several SVG files together into a\nsingle file (ready for printing).\n\nAs well as the exposed library modules, the package comes\nwith an executable called SVGtile that can perform this\nSVG tiling from the command-line.  SVGtile takes a list\nof SVG files as command-line arguments, then generates\nlots of files of the form TiledFront-1.svg.  Paper-size\n(default A4) and other settings can be set using\ncommand-line options: see SVGtile --help.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ];
        };
      exes = {
        "SVGtile" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }