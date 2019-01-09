{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "qd"; version = "1.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "double-double and quad-double number type via libqd";
      description = "This package supports both a double-double datatype (approx. 32 decimal digits)\nand a quad-double datatype (approx. 64 decimal digits), using libqd (which is\nimplemented in C++ with C and Fortran wrappers).  To compile this package you\nneed libqd to be installed.\n\n@'Numeric.QD.DoubleDouble.DoubleDouble'@ and @'Numeric.QD.QuadDouble.QuadDouble'@\nare strict tuples of @CDouble@s, with instances of:\n@'BinDecode'@, @'DecimalFormat'@, @'Eq'@, @'Floating'@, @'Fractional'@, @'Num'@,\n@'Ord'@, @'Read'@, @'Real'@, @'RealFrac'@, @'Show'@, @'Storable'@, @'Typeable'@.\n\nAdditional note: libqd depends on 64bit doubles, while some FPU architectures\nuse 80bit.  When using the Unsafe modules this might cause erroneous results;\nthe Safe modules (used by the instances above) set and restore the FPU flags\nin foreign code to avoid race conditions from pre-emptive Haskell threading.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.floatshow) ];
        libs = [ (pkgs."qd") ];
        };
      };
    }