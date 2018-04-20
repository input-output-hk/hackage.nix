{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "authenticate-ldap";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Litchard";
        author = "Michael Litchard";
        homepage = "http://github.com:mlitchard/authenticate-ldap";
        url = "";
        synopsis = "LDAP authentication for Haskell web applications.";
        description = "LDAP authentication for Haskell web applications.";
        buildType = "Simple";
      };
      components = {
        authenticate-ldap = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.LDAP
          ];
        };
      };
    }