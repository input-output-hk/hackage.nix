{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "network-minihttp";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "";
      url = "";
      synopsis = "A very minimal webserver";
      description = "A very minimal webserver";
      buildType = "Custom";
    };
    components = {
      "network-minihttp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.network-bytestring)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.binary)
          (hsPkgs.binary-strict)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
    };
  }