{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      cmd = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ldif";
          version = "0.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "radoslav.dorcik@gmail.com";
        author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        homepage = "http://rampa.sk/static/ldif.html";
        url = "";
        synopsis = "The LDAP Data Interchange Format (LDIF) tools";
        description = "LDIF files parser implementation using Parsec.\nThe LDAP Data Interchange Format (LDIF) is defined by RFC 2849.\n\nCurrent implementation is not complete and compliant with RFC.\n\nPackage includes following command line tools:\n\n- ldifdiff - calculates delta LDIF between two content LDIF files.\n\n- ldif2html - produces HTML/browsable LDIF file.\n\n- ldifmodify - replays delta LDIF operations on content LDIF (similar to ldapmodify).\n";
        buildType = "Simple";
      };
      components = {
        ldif = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.directory
            hsPkgs.rosezipper
            hsPkgs.parsec
          ];
        };
        exes = {
          ldifdiff = {};
          ldif2html = {};
          ldifmodify = {};
          ldifundo = {};
          ldifparse = {};
        };
        tests = {
          ldif-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
            ];
          };
        };
      };
    }