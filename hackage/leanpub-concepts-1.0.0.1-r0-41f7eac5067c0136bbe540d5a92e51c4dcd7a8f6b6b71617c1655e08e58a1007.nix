{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "leanpub-concepts"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/leanpub";
      url = "";
      synopsis = "Types for the Leanpub API";
      description = "This is a minimal package that just defines a common set of types\nfor working with the <https://leanpub.com/help/api Leanpub API>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
        };
      };
    }