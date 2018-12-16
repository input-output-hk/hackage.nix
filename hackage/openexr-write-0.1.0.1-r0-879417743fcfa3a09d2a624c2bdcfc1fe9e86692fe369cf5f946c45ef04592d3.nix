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
      specVersion = "1.10";
      identifier = {
        name = "openexr-write";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Pavol Klacansky";
      maintainer = "pavol@klacansky.com";
      author = "Pavol Klacansky";
      homepage = "https://github.com/pavolzetor/openexr-write#readme";
      url = "";
      synopsis = "Library for writing images in OpenEXR HDR file format.";
      description = "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.deepseq)
          (hsPkgs.split)
          (hsPkgs.vector)
          (hsPkgs.vector-split)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.openexr-write)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }