{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      nooverlap = false;
      blaze_html_0_5 = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent";
        version = "1.0.2.2";
      };
      license = "MIT";
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
          (hsPkgs.path-pieces)
          (hsPkgs.aeson)
          (hsPkgs.monad-logger)
          (hsPkgs.transformers-base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }