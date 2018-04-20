{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-miscorder";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "© 2015 ARJANEN Loïc Jean David";
        maintainer = "arjanen.loic@gmail.com";
        author = "ARJANEN Loïc Jean David";
        homepage = "";
        url = "";
        synopsis = "Miscellaneous newtypes for orderings of discutable use.";
        description = "A collection of newtypes with Ord and Eq instances with peculiar behaviours.";
        buildType = "Simple";
      };
      components = {
        acme-miscorder = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
      };
    }