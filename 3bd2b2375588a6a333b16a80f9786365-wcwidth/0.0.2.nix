{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      cli = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "wcwidth";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@solidsnack.be";
        author = "Jason Dusek";
        homepage = "http://github.com/solidsnack/wcwidth/";
        url = "";
        synopsis = "Native wcwidth.";
        description = "Bindings for your system's native wcwidth and a command line tool to examine\nthe widths assigned by it. The command line tool can compile a width table\nto Haskell code that assigns widths to the Char type.";
        buildType = "Simple";
      };
      components = {
        "wcwidth" = {
          depends  = [
            hsPkgs.containers
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          "wcwidth-tools" = {
            depends  = [
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.setlocale
              hsPkgs.utf8-string
              hsPkgs.attoparsec
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }