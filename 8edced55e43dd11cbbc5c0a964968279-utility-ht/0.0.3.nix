{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "utility-ht";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Various small helper functions for Lists, Maybes, Tuples, Functions";
        description = "Various small helper functions for Lists, Maybes, Tuples, Functions.\nSome of these functions are improved implementations of standard functions.\nThey have the same name as their standard counterparts.\nThe package only contains functions\nthat do not require packages other than the base package.\nThus you do not risk a dependency avalanche by importing it.\nHowever, further splitting the base package might invalidate this statement.";
        buildType = "Simple";
      };
      components = {
        "utility-ht" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }