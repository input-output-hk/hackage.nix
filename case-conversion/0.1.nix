{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "case-conversion";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "www.xy30.com";
        url = "";
        synopsis = "Convert between different cases";
        description = "Convert Between Snake,Camel and Spinal Case";
        buildType = "Simple";
      };
      components = {
        case-conversion = {
          depends  = [ hsPkgs.base ];
        };
      };
    }