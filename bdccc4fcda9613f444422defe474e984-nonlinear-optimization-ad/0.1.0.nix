{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nonlinear-optimization-ad";
          version = "0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2013 Masahiro Sakai";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "https://github.com/msakai/nonlinear-optimization-ad";
        url = "";
        synopsis = "Wrapper of nonlinear-optimization package for using with AD package";
        description = "Wrapper of nonlinear-optimization package for using with AD package";
        buildType = "Simple";
      };
      components = {
        nonlinear-optimization-ad = {
          depends  = [
            hsPkgs.base
            hsPkgs.nonlinear-optimization
            hsPkgs.ad
            hsPkgs.vector
          ];
        };
      };
    }