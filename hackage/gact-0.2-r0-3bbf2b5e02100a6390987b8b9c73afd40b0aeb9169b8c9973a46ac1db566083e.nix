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
        name = "gact";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "General Alignment Clustering Tool";
      description = "Cluster sequences from PSL alignments.";
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