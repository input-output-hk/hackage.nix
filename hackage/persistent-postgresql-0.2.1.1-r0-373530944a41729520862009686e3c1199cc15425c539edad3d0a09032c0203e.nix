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
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/persistent/";
      url = "";
      synopsis = "Backend for the persistent library using postgresql.";
      description = "Based on the HDBC-postgresql package";
      buildType = "Simple";
    };
    components = {
      "persistent-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.HDBC)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.persistent)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }