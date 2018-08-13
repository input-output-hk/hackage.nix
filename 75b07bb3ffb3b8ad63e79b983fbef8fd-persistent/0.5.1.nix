{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
      test-postgresql = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Type-safe, non-relational, multi-backend persistence.";
      description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
      buildType = "Simple";
    };
    components = {
      "persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.enumerator)
          (hsPkgs.monad-control)
          (hsPkgs.pool)
          (hsPkgs.blaze-html)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.haskell98)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC)
            (hsPkgs.web-routes-quasi)
          ];
          libs = [ (pkgs.sqlite3) ];
        };
      };
    };
  }