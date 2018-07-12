{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "varan";
          version = "0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "";
        url = "";
        synopsis = "Process mpileup output to identify significant differences";
        description = "Using Agresti-Coull estimation of confidence interval, report\nvariant positions found in pooled samples along with significance of\nthe variant having different underlying allele frequency ('+' for 95%,\n'*' for 99%).";
        buildType = "Simple";
      };
      components = {
        exes = {
          "varan" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.parallel
              hsPkgs.statistics
              hsPkgs.cmdargs
              hsPkgs.bytestring
            ];
          };
          "vextr" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
            ];
          };
          "sparks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }