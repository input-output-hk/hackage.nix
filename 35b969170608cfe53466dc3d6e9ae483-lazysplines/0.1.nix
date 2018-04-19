{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lazysplines";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gbazerman@gmail.com";
        author = "Gershom Bazerman, Jeff Polakow";
        homepage = "";
        url = "";
        synopsis = "Differential solving with lazy splines";
        description = "See the source of Numeric.LazySplines.Examples for usage.";
        buildType = "Simple";
      };
      components = {
        lazysplines = {
          depends  = [ hsPkgs.base ];
        };
      };
    }