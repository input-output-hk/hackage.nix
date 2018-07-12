{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "decepticons";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "headprogrammingczar@gmail.com";
        author = "JoeQuinn";
        homepage = "";
        url = "";
        synopsis = "The categorical dual of transformers.";
        description = "The categorical dual of transformers.\n\nNOTE: decepticons is deprecated in favor of cdl.";
        buildType = "Simple";
      };
      components = {
        "decepticons" = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad-transformers
          ];
        };
      };
    }