{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "wcwidth";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wcwidth@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/width/";
      url = "";
      synopsis = "Native wcwidth.";
      description = "Bindings for your system's native wcwidth and a command line tool to examine\nthe widths assigned by it. The command line tool can compile a width table\nto Haskell code that assigns widths to the Char type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "wcwidth-tools" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.setlocale)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestringparser-temporary)
          ];
        };
      };
    };
  }