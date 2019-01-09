{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "verify"; version = "0.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "Author name here";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A new Haskeleton package.";
      description = "verify is a new Haskeleton package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.jwt)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.text-conversions)
          ];
        };
      exes = { "verify" = { depends = [ (hsPkgs.base) (hsPkgs.verify) ]; }; };
      tests = {
        "verify-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jwt)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.text-conversions)
            (hsPkgs.QuickCheck)
            (hsPkgs.verify)
            ];
          };
        };
      };
    }