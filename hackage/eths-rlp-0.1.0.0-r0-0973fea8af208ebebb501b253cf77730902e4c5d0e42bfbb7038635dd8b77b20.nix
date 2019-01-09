{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "eths-rlp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Leonid Logvinov";
      maintainer = "logvinov.leon@gmail.com";
      author = "Leonid Logvinov";
      homepage = "";
      url = "";
      synopsis = "Ethereum Recursive Length Prefix Encoding";
      description = "RLP encoding/decoding, as described in the Ethereum Yellowpaper";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.binary-strict)
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs.hscolour);
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.eths-rlp)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      };
    }