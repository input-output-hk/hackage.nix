{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
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
      identifier = {
        name = "scholdoc";
        version = "0.1.3";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2014 Tim T.Y. Lin, (c) 2006-2014 John MacFarlane";
      maintainer = "Tim T.Y. Lin <timtylin@gmail.com>";
      author = "Tim T.Y. Lin <timtylin@gmail.com>";
      homepage = "http://scholarlymarkdown.com";
      url = "";
      synopsis = "Converts ScholarlyMarkdown documents to HTML5/LaTeX/Docx format";
      description = "Scholdoc is a command-line utility that converts\nScholarlyMarkdown documents into the HTML5, LaTeX, and Docx\n(OOML) formats. It is intended to facilitate academic writing\nin a cross-platform, semantic-aware, plaintext format that can\nbe quickly used in modern publishing pipelines.\n\nScholdoc is implemented as (rather crude) fork of @pandoc@,\nand the command-line executable mostly retains the same user\ninterface (including the custom template and filter system).\nIt essentially understands a new input format\n@markdown_scholarly@ (implemented in the markdown reader a\nsuperset of @markdown_pandoc@ features), and limits itself to\nHTML5, LaTeX, and Docx output.\n\nUnfortunately, currently Scholdoc occupies the @Pandoc@\nnamespace. This is done to avoid problems when merging in\nfixes and changes from the core Pandoc project, and to\npotentially allow enhancements from Scholdoc to be contributed\nback to Pandoc. It is thus not recommended to use the library\ndirectly, as Scholdoc is not backwards-compatible with Pandoc,\nto avoid confusion.\n\nFor descriptions of the original @pandoc@ package, please\nvisit <http://hackage.haskell.org/package/pandoc>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.zip-archive)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.HTTP)
          (hsPkgs.scholdoc-texmath)
          (hsPkgs.xml)
          (hsPkgs.random)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.scholdoc-types)
          (hsPkgs.aeson)
          (hsPkgs.tagsoup)
          (hsPkgs.base64-bytestring)
          (hsPkgs.zlib)
          (hsPkgs.highlighting-kate)
          (hsPkgs.data-default)
          (hsPkgs.temporary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.yaml)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.hslua)
          (hsPkgs.binary)
          (hsPkgs.SHA)
          (hsPkgs.old-time)
          (hsPkgs.JuicyPixels)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optionals (flags.https) [
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
        ];
      };
      exes = {
        "scholdoc" = {
          depends = [
            (hsPkgs.scholdoc)
            (hsPkgs.scholdoc-types)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.highlighting-kate)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.containers)
          ] ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) ]
            else [ (hsPkgs.network) ]);
        };
        "tryscholdoc" = {
          depends = pkgs.lib.optionals (flags.tryscholdoc) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.scholdoc)
            (hsPkgs.highlighting-kate)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.wai)
            (hsPkgs.http-types)
          ];
        };
      };
      tests = {
        "test-scholdoc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.scholdoc)
            (hsPkgs.scholdoc-types)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.Diff)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.executable-path)
          ];
        };
      };
      benchmarks = {
        "benchmark-scholdoc" = {
          depends = [
            (hsPkgs.scholdoc)
            (hsPkgs.base)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }