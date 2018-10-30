{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      all = false;
      unit = false;
      spartan3e = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kansas-lava-cores";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
      url = "";
      synopsis = "FPGA Cores Written in Kansas Lava.";
      description = "Kansas Lava Cores is a collection of libraries, written in Kansas Lava,\nthat describe specific hardware components, as well as a Spartan3e\nboard monad and simulator, and testing framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.kansas-lava)
          (hsPkgs.sized-types)
          (hsPkgs.ansi-terminal)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ];
      };
      exes = {
        "spartan3e-demo" = {
          depends  = if flags.spartan3e || flags.all
            then [
              (hsPkgs.base)
              (hsPkgs.kansas-lava)
              (hsPkgs.sized-types)
              (hsPkgs.ansi-terminal)
              (hsPkgs.data-default)
              (hsPkgs.directory)
              (hsPkgs.bytestring)
              (hsPkgs.network)
              (hsPkgs.random)
              (hsPkgs.cmdargs)
            ]
            else [ (hsPkgs.base) ];
        };
        "kansas-lava-cores-tests" = {
          depends  = if flags.unit || flags.all
            then [
              (hsPkgs.base)
              (hsPkgs.kansas-lava)
              (hsPkgs.sized-types)
              (hsPkgs.ansi-terminal)
              (hsPkgs.data-default)
              (hsPkgs.directory)
              (hsPkgs.bytestring)
              (hsPkgs.network)
              (hsPkgs.random)
            ]
            else [ (hsPkgs.base) ];
        };
      };
    };
  }