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
      specVersion = "1.10";
      identifier = {
        name = "openexr-write";
        version = "0.1.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2018 Pavol Klacansky";
      maintainer = "pavol@klacansky.com";
      author = "Pavol Klacansky";
      homepage = "git://klacansky.com/openexr-write.git";
      url = "";
      synopsis = "Library for writing images in OpenEXR HDR file format.";
      description = "OpenEXR allows to store pixels as floating point numbers and thus can capture high dynamic range.";
      buildType = "Simple";
    };
    components = {
      "openexr-write" = {
        depends  = [
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
          depends  = [
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