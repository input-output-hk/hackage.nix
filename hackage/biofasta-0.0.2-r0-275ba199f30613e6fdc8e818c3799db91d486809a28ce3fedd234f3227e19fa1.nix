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
        name = "biofasta";
        version = "0.0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dfornika@gmail.com";
      author = "Dan Fornika <dfornika@gmail.com>";
      homepage = "https://patch-tag.com/r/dfornika/biofasta/home";
      url = "";
      synopsis = "Library for reading fasta sequence files";
      description = "Library for reading fasta sequence files";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.biocore)
          (hsPkgs.bytestring)
        ];
      };
    };
  }