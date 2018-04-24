{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "LDAP";
          version = "0.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2009 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/ldap-haskell";
        url = "";
        synopsis = "Haskell binding for C LDAP API";
        description = "";
        buildType = "Simple";
      };
      components = {
        LDAP = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.base;
          libs = [ pkgs.ldap ];
        };
        exes = {
          runtests = {
            depends  = pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.base;
            libs = [ pkgs.ldap ];
          };
        };
      };
    }