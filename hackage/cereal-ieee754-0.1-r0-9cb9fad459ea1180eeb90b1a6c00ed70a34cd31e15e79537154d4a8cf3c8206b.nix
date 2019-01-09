{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cereal-ieee754"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "http://github.com/jystic/cereal-ieee754";
      url = "";
      synopsis = "Floating point support for the 'cereal' serialization library";
      description = "Provides functions for reading and writing IEEE 754 floating\npoint numbers using the 'cereal' binary serialization library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.array) (hsPkgs.base) (hsPkgs.cereal) ];
        };
      };
    }