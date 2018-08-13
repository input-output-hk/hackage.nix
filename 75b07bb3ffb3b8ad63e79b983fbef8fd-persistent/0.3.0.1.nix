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
      specVersion = "1.6";
      identifier = {
        name = "persistent";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/persistent/";
      url = "";
      synopsis = "Type-safe, non-relational, multi-backend persistence.";
      description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
      buildType = "Simple";
    };
    components = {
      "persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.hamlet)
          (hsPkgs.web-routes-quasi)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.enumerator)
          (hsPkgs.stm)
          (hsPkgs.neither)
        ];
      };
    };
  }