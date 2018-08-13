{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "deka";
        version = "0.6.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014 Omari Norman";
      maintainer = "Omari Norman, omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://github.com/massysett/deka";
      url = "";
      synopsis = "Decimal floating point arithmetic";
      description = "deka provides decimal floating point arithmetic.  It is based on\nmpdecimal, the C library used to provide support for the Decimal\nmodule in Python 3.\n\nYou will need to install mpdecimal to use deka; otherwise your\nexecutables will not link.  It is available at\n\n<http://www.bytereef.org/mpdecimal/>\n\nmpdecimal has also been packaged for some Linux distributions,\nsuch as Debian (libmpdec-dev - available in Jessie and later) and\nArch (mpdecimal).\n\nmpdecimal, in turn, implements the General Decimal Arithmetic\nSpecification, which is available at\n\n<http://speleotrove.com/decimal/>\n\nFor more on deka, please see the Github home page at\n\n<https://github.com/massysett/deka>\n\nTests are packaged separately in the deka-tests package.";
      buildType = "Simple";
    };
    components = {
      "deka" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
        libs = [ (pkgs.mpdec) ];
      };
    };
  }