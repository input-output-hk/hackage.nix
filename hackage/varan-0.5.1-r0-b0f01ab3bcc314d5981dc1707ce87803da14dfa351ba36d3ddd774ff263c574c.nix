{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "varan";
        version = "0.5.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "Process mpileup output to identify significant differences";
      description = "Post-processing output from `samtools mpileup` to extract various information,\nincluding statistics (per-position or global), consensus sequence (in various\nformats), and textual visualizations.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "varan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.statistics)
            (hsPkgs.cmdargs)
            (hsPkgs.bytestring)
          ];
        };
        "vextr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
          ];
        };
        "sparks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }