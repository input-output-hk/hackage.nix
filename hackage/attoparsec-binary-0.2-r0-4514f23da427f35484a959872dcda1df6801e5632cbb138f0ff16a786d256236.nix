{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "attoparsec-binary"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Andrew Drake";
      maintainer = "adrake@adrake.org";
      author = "Andrew Drake";
      homepage = "";
      url = "";
      synopsis = "Binary processing extensions to Attoparsec.";
      description = "This package adds a collection of helper functions to make\nthe task dealing with binary data of varying endianness from within an\nAttoparsec parser easier.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.attoparsec) (hsPkgs.base) (hsPkgs.bytestring) ];
        };
      };
    }