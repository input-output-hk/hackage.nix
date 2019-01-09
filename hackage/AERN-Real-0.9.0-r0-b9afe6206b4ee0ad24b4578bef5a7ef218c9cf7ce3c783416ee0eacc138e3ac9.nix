{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { containers-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Real"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Michal Konecny, Amin Farjudian, Jan Duracz";
      maintainer = "Michal Konecny";
      author = "Michal Konecny";
      homepage = "";
      url = "";
      synopsis = "datatypes and abstractions for approximating exact real numbers";
      description = "Datatypes and abstractions for approximating exact real numbers\nand a basic arithmetic over such approximations.  The design is\ninspired to some degree by Mueller's iRRAM and Lambov's RealLib\n(both are C++ libraries for exact real arithmetic).\n\nAbstractions are provided via 4 type classes:\n\n* ERRealBase: abstracts floating point numbers\n\n* ERApprox: abstracts neighbourhoods of real numbers\n\n* ERIntApprox: abstracts neighbourhoods of real numbers that are known to be intervals\n\n* ERApproxElementary: abstracts real number approximations that support elementary operations\n\nFor ERRealBase we give several implementations.  The default is\nan arbitrary precision floating point type that uses Double\nfor lower precisions and an Integer-based simulation for higher\nprecisions.  Rational numbers can be used as one of the alternatives.\nAugustsson's Data.Number.BigFloat can be easily wrapped as an instance\nof ERRealBase except that it uses a different method to control precision.\n\nERIntApprox is implemented via outwards-rounded arbitrary precision interval arithmetic.\nAny instance of ERRealBase can be used for the endpoints of the intervals.\n\nERApproxElementary is implemented generically for any implementation\nof ERIntApprox.  This way some of the most common elementary operations are provided,\nnotably: sqrt, exp, log, sin, cos, atan.  These operations converge\nto an arbitrary precision and also work well over larger intervals without\nexcessive wrapping.\n\nThere is also some support for generic Taylor series, interval Newton method\nand simple numerical integration.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.containers-in-base
          then [ (hsPkgs.base) (hsPkgs.binary) ]
          else [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.binary) ];
        };
      };
    }