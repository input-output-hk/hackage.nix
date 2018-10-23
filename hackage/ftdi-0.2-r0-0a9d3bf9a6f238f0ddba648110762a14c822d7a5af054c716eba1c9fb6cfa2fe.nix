{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test = false;
      hpc = false;
      nolib = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ftdi";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010 Roel van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A thin layer over USB to communicate with FTDI chips";
      description = "This library enables you to communicate with FTDI devices. It is\nimplemented as a lightweight wrapper around the usb library.";
      buildType = "Custom";
    };
    components = {
      "ftdi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.monads-fd)
          (hsPkgs.safe)
          (hsPkgs.transformers)
          (hsPkgs.usb)
        ];
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.derive)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }