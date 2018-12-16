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
        name = "star-to-star-contra";
        version = "1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "nicolas.frisby@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "contravariant instances for * -> * types and operators.";
      description = "Contravariant instances for the fundamental * -> * types and operators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.star-to-star)
        ];
      };
    };
  }