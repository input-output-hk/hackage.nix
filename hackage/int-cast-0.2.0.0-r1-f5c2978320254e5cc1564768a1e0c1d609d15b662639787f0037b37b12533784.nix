{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "int-cast";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/int-cast";
      url = "";
      synopsis = "Checked conversions between integral types";
      description = "Provides statically or dynamically checked conversions between integral types. See documentation in \"Data.IntCast\" for more details.";
      buildType = "Simple";
    };
    components = {
      "int-cast" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
      };
      tests = {
        "int-cast-test" = {
          depends  = [
            (hsPkgs.int-cast)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
        };
      };
    };
  }