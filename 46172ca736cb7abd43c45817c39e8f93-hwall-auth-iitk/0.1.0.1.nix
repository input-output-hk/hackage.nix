{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hwall-auth-iitk";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "satvikc@iitk.ac.in";
        author = "satvikc";
        homepage = "";
        url = "";
        synopsis = "Initial version of firewall Authentication for IITK network.";
        description = "Firewall Authentication script for IITK network in haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "firewall-auth" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.haskeline
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.regex-compat
              hsPkgs.unix
            ];
          };
        };
      };
    }