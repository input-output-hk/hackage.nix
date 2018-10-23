{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "BlogLiterately-diagrams";
        version = "0.1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 Brent Yorgey";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Include images in blog posts with inline diagrams code";
      description = "A plugin for @BlogLiterately@ (<http://hackage.haskell.org/package/BlogLiterately>) which turns inline diagrams\ncode into images.\nThis library also provides an executable,\n@BlogLiteratelyD@, providing a standard instance\nof @BlogLiterately@ extended with support for\ninline diagrams code.  For most users it\nshould suffice to simply use @BlogLiteratelyD@ in\nplace of @BlogLiterately@.\n\nTo use it, include code blocks with the @dia@ or\n@dia-def@ class (using pandoc's special extended\nMarkdown syntax\n(<http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html>),\nor BlogLiterately's extended syntax for tagged\ncode blocks\n(<http://byorgey.wordpress.com/blogliterately/>)),\nlike so:\n\n>     [dia-def]\n>     -- This block produces no output but its\n>     -- declarations will be in scope in all the\n>     -- rest of the diagram blocks.\n>\n>     gSq = square 1 # fc green\n>\n> NOTE: Square brackets below should be replaced\n> by curly braces.  Haddock chokes on curly\n> braces.\n>\n> Here is a green square:\n>\n> ```[.dia width='200']\n> dia = gSq\n> ```\n>\n> Green squares like `gSq`[.dia height='16']\n> and blue circles like `circle 1 # fc blue`[.dia height='16']\n> are extremely important.\n\nNote that attributes like width and height can\nalso be specified, but be sure to put the numbers\nin quotes or else they will not parse properly.\n\nRunning this through @BlogLiteratelyD@ (after\nreplacing square brackets with curly braces)\nshould result in HTML that looks something like\nthis:\n\n<<http://projects.haskell.org/diagrams/hosted/BLD-post-result.png>>";
      buildType = "Simple";
    };
    components = {
      "BlogLiterately-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-builder)
          (hsPkgs.diagrams-lib)
          (hsPkgs.BlogLiterately)
          (hsPkgs.pandoc)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "BlogLiteratelyD" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.BlogLiterately)
            (hsPkgs.BlogLiterately-diagrams)
          ];
        };
      };
    };
  }