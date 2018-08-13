{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bioace";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dfornika@gmail.com";
      author = "Dan Fornika <dfornika@gmail.com>";
      homepage = "https://patch-tag.com/r/dfornika/bioace/home";
      url = "";
      synopsis = "Library for reading ace assembly files";
      description = "Library for reading ace assembly files";
      buildType = "Simple";
    };
    components = {
      "bioace" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.biocore)
          (hsPkgs.bioalign)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
        ];
      };
    };
  }