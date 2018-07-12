{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hpygments";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Lazar <lazar6@illinois.edu>";
        author = "David Lazar";
        homepage = "";
        url = "";
        synopsis = "Highlight source code using Pygments";
        description = "Highlight source code using Pygments <http://pygments.org>. This package\ndepends on Pygments and its accompanying @pygmentize@ script.";
        buildType = "Simple";
      };
      components = {
        "hpygments" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.process-extras
            hsPkgs.aeson
          ];
        };
      };
    }