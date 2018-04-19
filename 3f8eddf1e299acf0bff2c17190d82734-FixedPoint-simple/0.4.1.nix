{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "FixedPoint-simple";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Galois Inc. 2012";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "https://github.com/TomMD/FixedPoint";
        url = "";
        synopsis = "Fixed point, large word, and large int numerical representations (types and common class instances)";
        description = "This library uses elementary techniques to implement fixed point types in terms\nof basic integrals such as Word64.  All mathematical operations are implemented\nexplicilty, instead of lifting to Integer, so that this code can be used for\neducational purposes or as a basis for fixed point libraries in other languages.";
        buildType = "Simple";
      };
      components = {
        FixedPoint-simple = {
          depends  = [ hsPkgs.base ];
        };
      };
    }