{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "genvalidity"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Testing utilities for the validity library";
      description = "Note: There are companion instance packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-aeson genvalidity-aeson>\n\n* <https://hackage.haskell.org/package/genvalidity-bytestring genvalidity-bytestring>\n\n* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>\n\n* <https://hackage.haskell.org/package/genvalidity-path genvalidity-path>\n\n* <https://hackage.haskell.org/package/genvalidity-scientific genvalidity-scientific>\n\n* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>\n\n* <https://hackage.haskell.org/package/genvalidity-time genvalidity-time>\n\n* <https://hackage.haskell.org/package/genvalidity-unordered-containers genvalidity-unordered-containers>\n\n* <https://hackage.haskell.org/package/genvalidity-uuid genvalidity-uuid>\n\n* <https://hackage.haskell.org/package/genvalidity-vector genvalidity-vector>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            ];
          buildable = true;
          };
        };
      };
    }