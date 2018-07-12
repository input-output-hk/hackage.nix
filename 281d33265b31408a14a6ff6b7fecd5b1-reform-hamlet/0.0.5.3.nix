{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "reform-hamlet";
          version = "0.0.5.3";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw, Jasper Van der Jeugt, SeeReason Partners LLC";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Add support for using Hamlet with Reform";
        description = "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Hamlet.";
        buildType = "Simple";
      };
      components = {
        "reform-hamlet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.shakespeare
            hsPkgs.reform
            hsPkgs.text
          ];
        };
      };
    }