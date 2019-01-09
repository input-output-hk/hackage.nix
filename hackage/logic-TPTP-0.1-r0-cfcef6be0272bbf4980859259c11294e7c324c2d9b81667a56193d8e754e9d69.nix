{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "logic-TPTP"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Daniel Schüssler <daniels@community.haskell.org>";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Import, export and other utilities for TPTP, a syntax for first-order logic";
      description = "For information about the TPTP format, see <http://www.cs.miami.edu/~tptp/>.\n\nComponents:\n\n- Parser ('parse')\n\n- Exporter ('toTPTP')\n\n- Pretty-printer ('pretty')\n\n- QuickCheck instances (generation of random formulae)\n\n- 'diff' : Get a \\\"formula\\\" which concisely represents the differences between two given formulae (equal subexpressions are truncated; so are the subexpressions of subexpressions whose heads already differ)\n\nTests passed:\n\n- For randomly generated formulae, @parse . toTPTP == id@\n\n- For each problem in the TPTP library (v 3.7.0.0) which doesn't contain the string \\\"thf(\\\", @parse . toTPTP . parse == parse@\n\nNot yet implemented: The new /thf/ formula type.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.QuickCheck)
          (hsPkgs.utf8-prelude)
          ];
        };
      };
    }