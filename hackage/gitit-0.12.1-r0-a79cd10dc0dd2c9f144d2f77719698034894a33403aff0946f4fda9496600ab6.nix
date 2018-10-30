{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = true;
      plugins = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gitit";
        version = "0.12.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://gitit.net";
      url = "";
      synopsis = "Wiki using happstack, git or darcs, and pandoc.";
      description = "Gitit is a wiki backed by a git, darcs, or mercurial\nfilestore.  Pages and uploaded files can be modified either\ndirectly via the VCS's command-line tools or through\nthe wiki's web interface. Pandoc is used for markup\nprocessing, so pages may be written in\n(extended) markdown, reStructuredText, LaTeX, HTML,\nor literate Haskell, and exported in ten different\nformats, including LaTeX, ConTeXt, DocBook, RTF,\nOpenOffice ODT, and MediaWiki markup.\n\nNotable features include\n\n* plugins: dynamically loaded page\ntransformations written in Haskell (see\n\"Network.Gitit.Interface\")\n\n* conversion of TeX math to MathML for display in\nweb browsers\n\n* syntax highlighting of source code\nfiles and code snippets\n\n* Atom feeds (site-wide and per-page)\n\n* a library, \"Network.Gitit\", that makes it simple\nto include a gitit wiki in any happstack application\n\nYou can see a running demo at <http://gitit.net>.\n\nFor usage information:  @gitit --help@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.xhtml)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.highlighting-kate)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.random)
          (hsPkgs.utf8-string)
          (hsPkgs.SHA)
          (hsPkgs.HTTP)
          (hsPkgs.HStringTemplate)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.recaptcha)
          (hsPkgs.filestore)
          (hsPkgs.zlib)
          (hsPkgs.url)
          (hsPkgs.happstack-server)
          (hsPkgs.base64-bytestring)
          (hsPkgs.xml)
          (hsPkgs.hslogger)
          (hsPkgs.ConfigFile)
          (hsPkgs.feed)
          (hsPkgs.xss-sanitize)
          (hsPkgs.tagsoup)
          (hsPkgs.blaze-html)
          (hsPkgs.json)
          (hsPkgs.uri)
          (hsPkgs.split)
          (hsPkgs.hoauth2)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client-tls)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
          (hsPkgs.base)
          (hsPkgs.syb)
        ]) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optionals (flags.plugins) [
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
        ];
      };
      exes = {
        "gitit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitit)
            (hsPkgs.mtl)
            (hsPkgs.hslogger)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.directory)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [ (hsPkgs.network) ]);
        };
        "expireGititCache" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.url)
            (hsPkgs.filepath)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [
              (hsPkgs.network)
            ])) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
            (hsPkgs.base)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }