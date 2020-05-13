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
      embed_data_files = false;
      tryscholdoc = false;
      https = true;
      make-pandoc-man-pages = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "scholdoc"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2014 Tim T.Y. Lin, (c) 2006-2014 John MacFarlane";
      maintainer = "Tim T.Y. Lin <timtylin@gmail.com>";
      author = "Tim T.Y. Lin <timtylin@gmail.com>";
      homepage = "http://scholdoc.scholarlymarkdown.com";
      url = "";
      synopsis = "Converts ScholarlyMarkdown documents to HTML5/LaTeX/Docx format";
      description = "Scholdoc is a command-line utility that converts\nScholarlyMarkdown documents into the HTML5, LaTeX, and Docx\n(OOML) formats. It is intended to facilitate academic writing\nin a cross-platform, semantic-aware, plaintext format that can\nbe quickly used in modern publishing pipelines.\n\nScholdoc is implemented as (rather crude) fork of @pandoc@,\nand the command-line executable mostly retains the same user\ninterface (including the custom template and filter system).\nIt essentially understands a new input format\n@markdown_scholarly@ (implemented in the markdown reader a\nsuperset of @markdown_pandoc@ features), and limits itself to\nHTML5, LaTeX, and Docx output.\n\nUnfortunately, currently Scholdoc occupies the @Pandoc@\nnamespace. This is done to avoid problems when merging in\nfixes and changes from the core Pandoc project, and to\npotentially allow enhancements from Scholdoc to be contributed\nback to Pandoc. It is thus not recommended to use the library\ndirectly, as Scholdoc is not backwards-compatible with Pandoc,\nto avoid confusion.\n\nFor descriptions of the original @pandoc@ package, please\nvisit <http://hackage.haskell.org/package/pandoc>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."scholdoc-texmath" or (errorHandler.buildDepError "scholdoc-texmath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."scholdoc-types" or (errorHandler.buildDepError "scholdoc-types"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (pkgs.lib).optionals (flags.https) [
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
        buildable = true;
        };
      exes = {
        "scholdoc" = {
          depends = [
            (hsPkgs."scholdoc" or (errorHandler.buildDepError "scholdoc"))
            (hsPkgs."scholdoc-types" or (errorHandler.buildDepError "scholdoc-types"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        "tryscholdoc" = {
          depends = (pkgs.lib).optionals (flags.tryscholdoc) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."scholdoc" or (errorHandler.buildDepError "scholdoc"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ];
          buildable = if flags.tryscholdoc then true else false;
          };
        };
      tests = {
        "test-scholdoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."scholdoc" or (errorHandler.buildDepError "scholdoc"))
            (hsPkgs."scholdoc-types" or (errorHandler.buildDepError "scholdoc-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-scholdoc" = {
          depends = [
            (hsPkgs."scholdoc" or (errorHandler.buildDepError "scholdoc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }