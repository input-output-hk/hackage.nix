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
        name = "augeas";
        version = "0.4.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jude@pwan.org";
      author = "Jude Nagurney";
      homepage = "http://trac.haskell.org/augeas";
      url = "http://hackage.haskell.org/packages/archive/augeas/0.4.0/augeas-0.4.0.tar.gz";
      synopsis = "A Haskell FFI wrapper for the Augeas API";
      description = "A Haskell FFI wrapper for the Augeas API";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
        ];
        pkgconfig = [
          (pkgconfPkgs.augeas)
        ];
      };
      exes = {
        "test-haskell-augeas" = {
          depends  = [ (hsPkgs.HUnit) ];
          libs = [ (pkgs."augeas") ];
          pkgconfig = [
            (pkgconfPkgs.augeas)
          ];
        };
      };
    };
  }