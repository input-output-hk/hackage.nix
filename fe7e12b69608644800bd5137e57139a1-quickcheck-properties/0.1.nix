{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "quickcheck-properties";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "QuickCheck properties for standard type classes.";
        description = "Package provide set of generic QuickCheck properties for testing\nlaws of standard type classes. At the moment is not complete. It do\nnot depend on QuickCheck and could be used with smallcheck as well.\n\nSee module Test.QuickCheck.Property.Common for general description\nof library and examples.";
        buildType = "Simple";
      };
      components = {
        quickcheck-properties = {
          depends  = [ hsPkgs.base ];
        };
      };
    }