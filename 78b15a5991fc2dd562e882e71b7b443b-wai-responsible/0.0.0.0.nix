{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-responsible";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Peter Harpending.";
        maintainer = "Peter Harpending <pharpend2@gmail.com>";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/wai-responsible";
        url = "";
        synopsis = "Response interface for WAI.";
        description = "Simple interface for things that generate a WAI response.";
        buildType = "Simple";
      };
      components = {
        wai-responsible = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.wai
          ];
        };
      };
    }