{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "reform-blaze";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Add support for using blaze-html with Reform";
        description = "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with blaze-html.";
        buildType = "Simple";
      };
      components = {
        reform-blaze = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.blaze-html
            hsPkgs.reform
            hsPkgs.text
          ];
        };
      };
    }