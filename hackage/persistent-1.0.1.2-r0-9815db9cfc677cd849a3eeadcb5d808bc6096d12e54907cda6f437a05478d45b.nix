{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      nooverlap = false;
      blaze_html_0_5 = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent";
        version = "1.0.1.2";
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
      "persistent" = {
        depends  = [
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
        ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ]
          else [ (hsPkgs.blaze-html) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }