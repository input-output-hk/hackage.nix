{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "bytesmith"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/bytesmith";
      url = "";
      synopsis = "Nonresumable byte parser";
      description = "Parse bytes as fast as possible. This is a nonresumable parser\nthat aggresively uses `UnboxedSums` to avoid performing any\nallocations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.byteslice) (hsPkgs.primitive) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytesmith)
            (hsPkgs.primitive)
            (hsPkgs.byteslice)
            ];
          };
        };
      };
    }