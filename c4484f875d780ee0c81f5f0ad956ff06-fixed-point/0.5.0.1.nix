{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fixed-point";
          version = "0.5.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
        author = "Jake McArthur";
        homepage = "";
        url = "";
        synopsis = "Binary fixed-point arithmetic";
        description = "This package defines a type for binary\nfixed-precision arithmetic. The main differences\nbetween this and Data.Fixed are that this is\nbinary fixed-point and it's polymorphic in the\nunderlying representation.\nWhen is this more appropriate than floating\npoint? You'll mainly want to use this when you\nneed to be able to represent fractional values\nwithin a bounded range. Fixed-point numbers have\nthe advantage of uniformity in these cases. On\nthe downside, you lose precision relative to\nfloating point numbers as you approach zero, and\nyou lose the ability to express very large (but\nimprecise) values that floating point can\nexpress. On some architectures, fixed-point\narithmetic might be faster than floating-point\narithmetic, but this is probably not the case on\nx86.";
        buildType = "Simple";
      };
      components = {
        fixed-point = {
          depends  = [ hsPkgs.base ];
        };
      };
    }