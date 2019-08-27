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
      specVersion = "1.10";
      identifier = { name = "BlogLiterately-diagrams"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012-2015 Brent Yorgey";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Include images in blog posts with inline diagrams code";
      description = "A plugin for @BlogLiterately@ (<http://hackage.haskell.org/package/BlogLiterately>) which turns inline diagrams\ncode into images.\nThis library also provides an executable,\n@BlogLiteratelyD@, providing a standard instance\nof @BlogLiterately@ extended with support for\ninline diagrams code.  For most users it\nshould suffice to simply use @BlogLiteratelyD@ in\nplace of @BlogLiterately@.\n\nTo use it, include code blocks with the @dia@ or\n@dia-def@ class (using pandoc's special extended\nMarkdown syntax\n(<http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html>),\nor BlogLiterately's extended syntax for tagged\ncode blocks\n(<http://byorgey.wordpress.com/blogliterately/>)),\nlike so:\n\n>     [dia-def]\n>     -- This block produces no output but its\n>     -- declarations will be in scope in all the\n>     -- rest of the diagram blocks.\n>\n>     gSq = square 1 # fc green\n>\n> NOTE: Square brackets below should be replaced\n> by curly braces.  Haddock chokes on curly\n> braces.\n>\n> Here is a green square:\n>\n> ```[.dia width='200']\n> dia = gSq\n> ```\n>\n> Green squares like `gSq`[.dia height='16']\n> and blue circles like `circle 1 # fc blue`[.dia height='16']\n> are extremely important.\n\nNote that attributes like width and height can\nalso be specified, but be sure to put the numbers\nin quotes or else they will not parse properly.\n\nRunning this through @BlogLiteratelyD@ (after\nreplacing square brackets with curly braces)\nshould result in HTML that looks something like\nthis:\n\n<<http://projects.haskell.org/diagrams/hosted/BLD-post-result.png>>\n\nIn addition to simple diagrams, @IO@ actions\nproducing diagrams may also be used.  In that\ncase the @IO@ action will simply be run, and the\nresulting diagram rendered.  This can be useful,\nfor example, when producing a diagram built from\nsome external data or using randomness.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-rasterific" or (buildDepError "diagrams-rasterific"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."diagrams-builder" or (buildDepError "diagrams-builder"))
          (hsPkgs."BlogLiterately" or (buildDepError "BlogLiterately"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."safe" or (buildDepError "safe"))
          ];
        };
      exes = {
        "BlogLiteratelyD" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."BlogLiterately" or (buildDepError "BlogLiterately"))
            (hsPkgs."BlogLiterately-diagrams" or (buildDepError "BlogLiterately-diagrams"))
            ];
          };
        };
      };
    }