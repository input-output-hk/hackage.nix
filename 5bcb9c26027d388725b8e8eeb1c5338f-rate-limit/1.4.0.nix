{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rate-limit";
          version = "1.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@uhsure.com>";
        author = "Adam Wick <awick@uhsure.com>";
        homepage = "http://github.com/acw/rate-limit";
        url = "";
        synopsis = "A basic library for rate-limiting IO actions.";
        description = "In many cases, it is useful, necessary, or simply nice to limit how\nfrequently you perform some action. For example, you may want to limit\nhow often your program makes a request of some web site. This library\nis intended as a general-purpose mechanism for rate-limiting IO actions.";
        buildType = "Simple";
      };
      components = {
        "rate-limit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.time-units
            hsPkgs.time
          ];
        };
      };
    }