{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "loadavg";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gtener@gmail.com";
        author = "Krzysztof Skrzętnicki";
        homepage = "";
        url = "";
        synopsis = "Load average parsing from /proc/loadavg and bindings to getloadavg (3)";
        description = "Load average parsing from @\\/proc\\/loadavg@ and bindings to @getloadavg (3)@";
        buildType = "Simple";
      };
      components = {
        loadavg = {
          depends  = [ hsPkgs.base ];
        };
      };
    }