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
      specVersion = "1.2";
      identifier = {
        name = "qd";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "double-double and quad-double number type via libqd";
      description = "This package supports both a double-double datatype (approx. 32 decimal digits)\nand a quad-double datatype (approx. 64 decimal digits), using libqd (which is\nimplemented in C++ with C and Fortran wrappers).  To compile this package you\nneed libqd to be installed.\n\n@'Numeric.QD.DoubleDouble.DoubleDouble'@ and @'Numeric.QD.QuadDouble.QuadDouble'@\nare strict tuples of @CDouble@s, with the following instances:\n\n* @'Eq'@\n\n* @'Floating'@\n\n* @'Fractional'@\n\n* @'Num'@\n\n* @'Ord'@\n\n* @'Real'@\n\n* @'RealFloat'@\n\n* @'RealFrac'@\n\n* @'Show'@\n\n* @'Storable'@\n\nBut note that the following functions (while present) are @'undefined'@:\n\n* @'properFraction'@\n\n* @'truncate'@\n\n* @'round'@\n\n* @'decodeFloat'@\n\n* @'encodeFloat'@\n\n* @'exponent'@\n\n* @'significand'@\n\nNon-crashing implementations of these are planned in a future update to\nthis package, as well as instances of @Enum@ and @Read@.\n\nAdditional note: libqd depends on 64bit doubles, while some FPU architectures\nuse 80bit.  It is highly recommended to compile with -fno-excess-precision and\nset the FPU control words to avoid erroneous behaviour, perhaps by doing\nsomething like this at the start of your program:\n\n> import Foreign (nullPtr)\n> import GHC.Conc (forkOnIO, numCapabilities)\n> import Numeric.QD.FPU.Raw (fpu_fix_start)\n> main :: IO ()\n> main = do\n>   mapM_ (flip forkOnIO \$ fpu_fix_start nullPtr) [ 0 .. numCapabilities - 1 ]\n>   -- ...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."qd") ];
      };
    };
  }