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
        name = "persistent-template";
        version = "1.1.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Type-safe, non-relational, multi-backend persistence.";
      description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
      buildType = "Simple";
    };
    components = {
      "persistent-template" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.persistent)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.persistent-template)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.persistent)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }