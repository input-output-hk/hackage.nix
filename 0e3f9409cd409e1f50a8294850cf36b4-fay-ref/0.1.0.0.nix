{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay-ref";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Andrew Miller";
        maintainer = "Andrew Miller <andrew@amxl.com>";
        author = "Andrew Miller";
        homepage = "https://github.com/A1kmm/fay-ref";
        url = "";
        synopsis = "Like IORef but for Fay.";
        description = "Like IORef but for Fay.";
        buildType = "Simple";
      };
      components = {
        "fay-ref" = {
          depends  = [ hsPkgs.fay-base ];
        };
      };
    }