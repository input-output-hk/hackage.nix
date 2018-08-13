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
      specVersion = "1.8";
      identifier = {
        name = "yesod-datatables";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tero Laitinen";
      author = "Tero Laitinen";
      homepage = "http://github.com/tlaitinen/yesod-datatables";
      url = "";
      synopsis = "Yesod plugin for DataTables (jQuery grid plugin)";
      description = "DataTables (<http://datatables.net>) is a capable jQuery plugin. This package contains routines for implementing server-side processing (e.g. request parsing, database querying, and response formatting) for DataTables with Yesod platform.";
      buildType = "Simple";
    };
    components = {
      "yesod-datatables" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-default)
          (hsPkgs.yesod-form)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.persistent)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.data-default)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-datatables)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.persistent)
            (hsPkgs.HUnit)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.template-haskell)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
          ];
        };
      };
    };
  }