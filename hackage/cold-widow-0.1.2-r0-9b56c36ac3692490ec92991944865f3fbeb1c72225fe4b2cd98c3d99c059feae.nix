{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cold-widow"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Mihai Giurgeanu";
      maintainer = "mihai.giurgeau@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "https://github.com/mihaigiurgeanu/cold-widow#readme";
      url = "";
      synopsis = "File transfer via QR Codes.";
      description = "Utilities and Haskell library to transfer files via qr-codes.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      exes = {
        "cold-widow" = { depends = [ (hsPkgs.base) ]; };
        "encode45" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.cold-widow) ];
          };
        "decode45" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.cold-widow) ];
          };
        "compact-decode45" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
          };
        };
      tests = {
        "cold-widow-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.cold-widow)
            ];
          };
        };
      };
    }