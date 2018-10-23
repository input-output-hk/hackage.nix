{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deka";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/deka";
      url = "";
      synopsis = "Decimal floating point arithmetic";
      description = "deka provides decimal floating point arithmetic.  It is based on\nmpdecimal, the C library used to provide support for the Decimal\nmodule in Python 3.\n\nYou will need to install mpdecimal to use deka; otherwise your\nexecutables will not link.  It is available at\n\n<http://www.bytereef.org/mpdecimal/>\n\nmpdecimal has also been packaged for some Linux distributions,\nsuch as Debian (libmpdec-dev - available in Jessie and later) and\nArch (mpdecimal).\n\nmpdecimal, in turn, implements the General Decimal Arithmetic\nSpecification, which is available at\n\n<http://speleotrove.com/decimal/>\n\nFor more on deka, please see the Github home page at\n\n<https://github.com/massysett/deka>";
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
        libs = [ (pkgs."mpdec") ];
      };
      tests = {
        "dectest" = {
          depends  = [
            (hsPkgs.deka)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.pipes)
          ];
          libs = [ (pkgs."mpdec") ];
        };
        "native" = {
          depends  = [
            (hsPkgs.deka)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
          libs = [ (pkgs."mpdec") ];
        };
      };
    };
  }