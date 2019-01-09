{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hs-php-session"; version = "0.0.8.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edwardlblake@gmail.com";
      author = "Edward L. Blake";
      homepage = "https://github.com/elblake/hs-php-session";
      url = "";
      synopsis = "PHP session serialization";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      };
    }