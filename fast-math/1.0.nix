{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fast-math";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2011, Liyang HU";
        maintainer = "fast-math@liyang.hu";
        author = "Liyang HU and Mike Izbicki";
        homepage = "";
        url = "";
        synopsis = "Non IEEE-754 compliant compile-time floating-point optimisations";
        description = "The \"Numeric.FastMath\" module brings into scope many unsafe @RULES@ for\n'Float's and 'Double's that can greatly improve run time performance.\nIt is roughly equivalent to gcc\\'s @-ffast-math@ compiler flag.\nOptimisation (at least @-O1@) must be enabled for any @RULES@ to take effect.\n\nThese rules are unsafe because they don't strictly adhere to the\nIEEE-754 regulations and may subtly change the results of your numeric computations.\nSee the <http://github.com/liyang/fast-math/ README> on github for more details.";
        buildType = "Simple";
      };
      components = {
        fast-math = {
          depends  = [ hsPkgs.base ];
        };
      };
    }