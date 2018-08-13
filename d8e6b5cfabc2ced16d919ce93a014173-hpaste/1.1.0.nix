{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hpaste";
        version = "1.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2010-2013 by Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "http://hpaste.org/";
      url = "";
      synopsis = "Haskell paste web site.";
      description = "Haskell paste web site. Includes: syntax highlighting for\nvarious languages, HLint suggestions for Haskell, annotations,\nrevisions, diffs between revisions, announcement to IRC channels,\nbrowsing of author's pastes, spam reporting/deletion,\nSpamAssassin-based spam protection, secret/private pastes.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpaste" = {
          depends  = [
            (hsPkgs.Diff)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.base)
            (hsPkgs.css)
            (hsPkgs.named-formlet)
            (hsPkgs.snap-app)
            (hsPkgs.ConfigFile)
            (hsPkgs.HJScript)
            (hsPkgs.MissingH)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.download-curl)
            (hsPkgs.feed)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hlint)
            (hsPkgs.hscolour)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.safe)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.mime-mail)
            (hsPkgs.cgi)
            (hsPkgs.process)
            (hsPkgs.postgresql-simple)
          ];
        };
      };
    };
  }