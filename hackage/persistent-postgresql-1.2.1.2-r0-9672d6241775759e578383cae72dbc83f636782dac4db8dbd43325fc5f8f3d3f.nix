{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent-postgresql";
        version = "1.2.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Felipe Lessa, Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using postgresql.";
      description = "Based on the postgresql-simple package";
      buildType = "Simple";
    };
    components = {
      "persistent-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.postgresql-simple)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.persistent)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.monad-control)
          (hsPkgs.blaze-builder)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
        ];
      };
    };
  }