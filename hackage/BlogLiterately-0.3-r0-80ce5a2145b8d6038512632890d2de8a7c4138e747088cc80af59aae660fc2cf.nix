{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.5";
      identifier = {
        name = "BlogLiterately";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Robert Greayer 2008.";
      maintainer = "Robert Greayer <robgreayer@yahoo.com>";
      author = "Robert Greayer <robgreayer@yahoo.com>";
      homepage = "none";
      url = "";
      synopsis = "A tool for posting Haskelly articles to blogs";
      description = "BlogLiterately is a tool for uploading web log posts to web log servers\nthat support the MetaWeblog API (such as WordPress-based blogs and many\nothers).  Blog posts to be published via BlogLiterately are written in\nmarkdown [1] format, with extensions supported by pandoc [2].  Posts may be\nactual 'bird-style' literate Haskell files, with commentary in markdown.\nCode segments (including actual source lines from literate haskell files,\nas well as markdown code blocks) may be syntax-highlighted in the resulting\nHTML that is posted to the blog.  There are two types (two different\nlibraries used) of formatting available for formatting code segments.\n\n* Hscolour (for formatting Haskell code segments)\n\n* highlighting-kate (for formatting Haskell and non-haskell segments)\n\nThe Markdown webpage has information about markdown formatting options,\nand the Pandoc website has information about the extensions supported.\nBlogLiterately extends the notation a bit further, for specifying code\nsegments.  In basic markdown, A code segment is set off from normal\ntext via indentation, e.g.:\n\n>   -- This is a code segment but the tool doesn't know what kind!\n>   foo :: String -> String\n\nPandoc offers another way to specify a code segment (replace the\nsquare braces with curly braces, haddock/hackage mangles them):\n\n> ~~~~ [ .haskell ]\n> -- This is a code segment, and the tool knows it's Haskell!\n> foo :: String -> String\n> ~~~~\n\nBlogLiterately lets you specify a Haskell segment this way (this is\njust a normal markdown indented code block with an extra tag at\nthe top.  In either the above way of specifying the type of code\nin the block, you may specify other kinds of code besides haskell,\ne.g. cpp, bash, java, ml, eiffel, etc.):\n\n>     [haskell]\n>     -- This is a code segment, and the tool knows it's Haskell!\n>     foo :: String -> String\n\nOnce you have written your markdown file, you can run the tool, specifying how\nyou want it highlighted.  You can specify different highlighting modes for\nthe haskell segments and the other code segments.  If using hscolour, you\ncan specify that the highlighting be done 'inline' via CSS 'style'\nattributes.  You can use the default styling (which is similar to source\ncode in documentation on hackage) or you can specify a configuration file\nwhich looks something like this:\n\n>     [(\"hs-keyword\",\"color: blue; font-weight: bold;\")\n>     , (\"hs-keyglyph\",\"color: red;\")\n>     , (\"hs-layout\",\"color: red;\")\n>     , (\"hs-comment\",\"color: green;\")\n>     , (\"hs-conid\", \"\")\n>     , (\"hs-varid\", \"\")\n>     , (\"hs-conop\", \"\")\n>     , (\"hs-varop\", \"\")\n>     , (\"hs-str\", \"color: teal;\")\n>     , (\"hs-chr\", \"color: teal;\")\n>     , (\"hs-number\", \"\")\n>     , (\"hs-cpp\", \"\")\n>     , (\"hs-selection\", \"\")\n>     , (\"hs-variantselection\", \"\")\n>     , (\"hs-definition\", \"\")]\n\nIt has to be (readable as) a Haskell value of type [(String,String)],\nand it will only have an effect if you use the above class names (e.g.\n'hs-keyword' to specify a style for Haskell keywords).\n\nWith highlighting-kate (always) and with hscolour\n(optionally), the style for syntax segments is specified using 'class'\nattributes, so the stylesheet must be provided separately.  Sample\nstylesheets are provided in the package archive file.\n\nTo use the highlighting-kate, you must (re)install Pandoc with highlighting\nenabled, like so:\n\n> cabal install -fhighlighting pandoc\n\nor\n\n> cabal install --reinstall -fhighlighting pandoc\n\n(If you have already installed BlogLiterately, you must reinstall that\nas well).\n\nThe options for BlogLiterately are, I hope, self-explanatory (given the\nabove background!).  Note that if Pandoc isn't installed with highlighting\nenabled, there will be fewer options (no -kate options):\n\n> BlogLierately v0.3, (C) Robert Greayer 2009\n> This program comes with ABSOLUTELY NO WARRANTY\n>\n>\n> BlogLiterately [FLAG] URL USER PASSWORD TITLE FILE\n>\n>   -? --help[=FORMAT]    Show usage information (optional format)\n>   -V --version          Show version information\n>   -v --verbose          Higher verbosity\n>   -q --quiet            Lower verbosity\n>   -t --test             do a test-run: html goes to stdout, is not posted\n>   -s --style=FILE       Style Specification (for --hscolour-icss)\n>      --hscolour-icss    hilight haskell: hscolour, inline style (default)\n>      --hscolour-css     hilight haskell: hscolour, separate stylesheet\n>      --hs-nohilight     no haskell hilighting\n>      --hs-kate          hilight haskell with highlighting-kate\n>      --other-code-kate  hilight other code with highlighting-kate\n>      --publish          Publish post (otherwise it's uploaded as a draft)\n>      --category=VALUE   post category (can specify more than one)\n>   -b --blogid=VALUE     Blog specific identifier (default=default)\n>      --postid=VALUE     Post to replace (if any)\n\n\nTo post to a WordPress blog, the command is:\n\n>     BlogLiterately http://blogurl.example.com/xmlrpc.php \\\n>         myname mypasswd \"Sample\" Sample.lhs\n\n(which creates a new post).  If, for example, the post id of that post\n(which BlogLiterately prints when it uploads a new post) was '37', then\nto update the post, the command would be:\n\n>     BlogLiterately --postid=37 http://blogurl.example.com/xmlrpc.php \\\n>         myname mypasswd \"Sample\" Sample.lhs\n\nand the post will be updated with the new text.\n\nReferences:\n\n1. <http://daringfireball.net/projects/markdown/>\n\n2. <http://johnmacfarlane.net/pandoc/>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "BlogLiterately" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.parsec)
            (hsPkgs.HaXml)
            (hsPkgs.utf8-string)
            (hsPkgs.hscolour)
            (hsPkgs.xhtml)
            (hsPkgs.cmdargs)
            (hsPkgs.haxr)
            (hsPkgs.pandoc)
          ];
        };
      };
    };
  }