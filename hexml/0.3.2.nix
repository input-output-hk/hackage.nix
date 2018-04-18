{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hexml";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2017";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/hexml#readme";
        url = "";
        synopsis = "XML subset DOM parser";
        description = "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.";
        buildType = "Simple";
      };
      components = {
        hexml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.extra
          ];
        };
        tests = {
          hexml-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hexml
            ];
          };
        };
      };
    }