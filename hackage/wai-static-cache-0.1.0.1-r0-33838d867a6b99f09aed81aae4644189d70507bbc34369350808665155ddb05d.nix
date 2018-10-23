{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-static-cache";
        version = "0.1.0.1";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "mr.hugo.gomes@gmail.com";
      author = "Hugo Gomes";
      homepage = "";
      url = "";
      synopsis = "A simple cache for serving static files in a WAI middleware";
      description = "";
      buildType = "Simple";
    };
    components = {
      "wai-static-cache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cityhash)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.transformers)
          (hsPkgs.system-filepath)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.resourcet)
        ];
      };
    };
  }