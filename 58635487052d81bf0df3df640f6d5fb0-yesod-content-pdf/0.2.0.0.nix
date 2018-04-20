{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-content-pdf";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Alex Kyllo";
        maintainer = "alex.kyllo@gmail.com";
        author = "Alex Kyllo";
        homepage = "https://github.com/alexkyllo/yesod-content-pdf#readme";
        url = "";
        synopsis = "PDF Content Type for Yesod";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        yesod-content-pdf = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.network-uri
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.yesod-core
            hsPkgs.conduit
            hsPkgs.data-default
            hsPkgs.transformers
          ];
        };
        tests = {
          yesod-content-pdf-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-content-pdf
            ];
          };
        };
      };
    }