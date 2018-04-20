{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "debug-diff";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Display a colorized diff between two Haskell values";
        description = "@Debug.Diff@ is a quick tool for comparing two Haskell values, as\nwhen diagnosing a test failure.  It pretty-prints the values\n(using the @groom@ library) and passes them to an external @diff@\ncommand (@colordiff@ by default), which writes the diff to standard\noutput.\n\n@Debug.Diff.Config@ provides more control over the diff parameters.";
        buildType = "Simple";
      };
      components = {
        debug-diff = {
          depends  = [
            hsPkgs.base
            hsPkgs.groom
            hsPkgs.temporary
            hsPkgs.process
          ];
        };
      };
    }