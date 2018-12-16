{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { nooverlap = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent";
        version = "0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Type-safe, multi-backend data serialization.";
      description = "Type-safe, data serialization. You must use a specific backend in order to make this useful.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.pool-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.path-pieces)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.transformers-base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }