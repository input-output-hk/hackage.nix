{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { nooverlap = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent";
        version = "0.7.0.1";
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
      "persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.pool-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.path-pieces)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }