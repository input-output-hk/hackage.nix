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
      specVersion = "1.10";
      identifier = {
        name = "quickcheck-special";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/quickcheck-special#readme";
      url = "";
      synopsis = "Edge cases and special values for QuickCheck Arbitrary instances";
      description = "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.nats)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.scientific)
          (hsPkgs.text)
        ];
      };
    };
  }