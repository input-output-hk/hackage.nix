{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "authenticate-kerberos";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Arash Rouhani";
        author = "Arash Rouhani";
        homepage = "http://github.com/yesodweb/authenticate";
        url = "";
        synopsis = "Authentication methods for Haskell web applications.";
        description = "Kerberos authenticate.";
        buildType = "Simple";
      };
      components = {
        "authenticate-kerberos" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.process
          ];
        };
      };
    }