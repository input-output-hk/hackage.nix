{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-operators";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/acme-operators#readme";
        url = "";
        synopsis = "Operators of base, all in one place!";
        description = "Have you ever been wondering about some magic lookin operator. Here are all operators in base package. Not so many.";
        buildType = "Simple";
      };
      components = {
        acme-operators = {
          depends  = [ hsPkgs.base ];
        };
      };
    }