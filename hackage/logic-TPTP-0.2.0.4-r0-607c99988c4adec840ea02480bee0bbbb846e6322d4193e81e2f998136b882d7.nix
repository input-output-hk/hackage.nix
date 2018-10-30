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
      specVersion = "1.6";
      identifier = {
        name = "logic-TPTP";
        version = "0.2.0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Import, export etc. for TPTP, a syntax for first-order logic";
      description = "For information about the TPTP format, see <http://www.cs.miami.edu/~tptp/>.\n\nComponents:\n\n- Parser ('parse')\n\n- Exporter ('toTPTP')\n\n- Pretty-printer ('pretty')\n\n- QuickCheck instances (generation of random formulae)\n\n- 'diff' : Get a \\\"formula\\\" which represents the differences between two given formulae (equal subexpressions are truncated; so are the subexpressions of subexpressions whose heads already differ)\n\nTests passed:\n\n- For randomly generated formulae, @parse . toTPTP == id@\n\n- For the @.p@ files in the TPTP (v 3.7.0.0) distribution's @PROBLEMS@ subtree which don't contain the string \\\"thf(\\\", @parse . toTPTP . parse == parse@\n\nNot yet implemented: The new /thf/ formula type.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.QuickCheck)
          (hsPkgs.utf8-prelude)
          (hsPkgs.mtl)
        ];
      };
    };
  }