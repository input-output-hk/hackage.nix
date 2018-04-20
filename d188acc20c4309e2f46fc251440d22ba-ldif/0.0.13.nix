{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      cmd = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ldif";
          version = "0.0.13";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "radoslav.dorcik@gmail.com";
        author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        homepage = "http://rampa.sk/static/ldif.html";
        url = "";
        synopsis = "The LDAP Data Interchange Format (LDIF) tools";
        description = "LDIF files parser implementation using Parsec.\nThe LDAP Data Interchange Format (LDIF) is defined by RFC 2849.\n\nCurrent implementation is not complete and compliant with RFC.\n\nPackage includes following command line tools:\n\n- ldifdiff - calculates delta LDIF between two content LDIF files.\n\n- ldif2html - produces HTML/browsable LDIF file.\n\n- ldifmodify - replays delta LDIF operations on content LDIF (similar to ldapmodify).\n\n- ldifundo - produces delta LDIF which rollbacks operations in input LDIF.\n";
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
          ldifdiff = {
            depends  = [
              hsPkgs.base
              hsPkgs.ldif
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.bytestring
            ];
          };
          ldif2html = {
            depends  = [
              hsPkgs.base
              hsPkgs.ldif
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.bytestring
            ];
          };
          ldifmodify = {
            depends  = [
              hsPkgs.base
              hsPkgs.ldif
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.bytestring
            ];
          };
          ldifundo = {
            depends  = [
              hsPkgs.base
              hsPkgs.ldif
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.bytestring
            ];
          };
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