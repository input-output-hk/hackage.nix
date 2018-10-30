{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent-postgresql";
        version = "0.3.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.HDBC)
          (hsPkgs.transformers)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.persistent)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.neither)
          (hsPkgs.text)
        ];
      };
    };
  }