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
      specVersion = "1.14";
      identifier = {
        name = "scrape-changes";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "matthias.mh.herrmann@googlemail.com";
      author = "Matthias Herrmann";
      homepage = "";
      url = "";
      synopsis = "Scrape websites for changes";
      description = "This library scrapes websites and invokes callbacks when there are changes, similar to a RSS reader.\nSending an email by invoking sendmail is a built-in callback mechanism. Of course, users can provide\ntheir own callback function in addition.\n\nLook at \"Network.ScrapeChanges\" for a full working example on how to use \"scrape-changes\".";
      buildType = "Simple";
    };
    components = {
      "scrape-changes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.validation)
          (hsPkgs.lens)
          (hsPkgs.mime-mail)
          (hsPkgs.network-uri)
          (hsPkgs.email-validate)
          (hsPkgs.semigroups)
          (hsPkgs.cron)
          (hsPkgs.attoparsec)
          (hsPkgs.wreq)
          (hsPkgs.http-client)
          (hsPkgs.hashable)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.hslogger)
          (hsPkgs.strict)
          (hsPkgs.text)
        ];
      };
      tests = {
        "scrapechanges-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.validation)
            (hsPkgs.lens)
            (hsPkgs.email-validate)
            (hsPkgs.cron)
            (hsPkgs.semigroups)
            (hsPkgs.hashable)
            (hsPkgs.scrape-changes)
            (hsPkgs.text)
            (hsPkgs.shakespeare)
          ];
        };
      };
    };
  }