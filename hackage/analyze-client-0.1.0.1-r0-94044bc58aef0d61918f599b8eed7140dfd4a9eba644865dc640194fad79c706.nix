{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "analyze-client";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/analyze-client";
      url = "";
      synopsis = "Client for analyze service";
      description = "";
      buildType = "Simple";
    };
    components = {
      "analyze-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.http-conduit)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
    };
  }