{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-ordlist";
          version = "0.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Leon P Smith <leon@melding-monads.com>";
        author = "Leon P Smith <leon@melding-monads.com>";
        homepage = "";
        url = "";
        synopsis = "Set and bag operations on ordered lists";
        description = "This module provides set and multiset operations on ordered lists.";
        buildType = "Simple";
      };
      components = {
        "data-ordlist" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }