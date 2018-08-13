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
        name = "gact";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "General Alignment Clustering Tool";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gact" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.biopsl)
            (hsPkgs.cmdargs)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }