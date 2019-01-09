{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "ldif"; version = "0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/ldif.html";
      url = "";
      synopsis = "The LDAP Data Interchange Format (LDIF) parser";
      description = "LDIF files parser implementation using Parsec and based\non RFC 2849 - The LDAP Data Interchange Format (LDIF).\n\nCurrent implementation is unfinished and need to be enhanced\nfor base64 encoded values and various DN escaping.\n\nIt includes following tool:\n\n- diffLDIF command generates change LDIF between two\ncontent LDIF files.\n\n- ldif2html command generates hypertext HTML browsable\nLDIF file.\n\n- ldifmodify commmand apply change LDIF on contenct LDIF\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ghc)
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.Cabal)
          ];
        };
      exes = {
        "diffLDIF" = {};
        "ldif2html" = {};
        "ldifmodify" = {};
        "ldifparse" = {};
        "test" = { depends = [ (hsPkgs.base) (hsPkgs.HUnit) ]; };
        };
      };
    }