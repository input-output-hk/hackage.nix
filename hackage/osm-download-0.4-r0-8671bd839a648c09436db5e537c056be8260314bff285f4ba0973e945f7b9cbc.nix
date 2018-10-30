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
        name = "osm-download";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas.DuBuisson@gmail.com";
      author = "Rob Stewart, Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Download Open Street Map tiles";
      description = "Download and locally cache open street map tiles based on HTTP\ncache control headers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.pool-conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.gps)
          (hsPkgs.containers)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.persistent)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.monadIO)
          (hsPkgs.stm-chans)
          (hsPkgs.text)
          (hsPkgs.monad-control)
          (hsPkgs.data-default)
          (hsPkgs.directory)
        ];
      };
    };
  }