{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "quickcheck-instances"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright Antoine Latter, 2012";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "https://github.com/aslatter/qc-instances";
      url = "";
      synopsis = "Common quickcheck instances";
      description = "QuickCheck instances.\n\nThe goal is to supply QuickCheck instances for\ntypes provided by the Haskell Platform.\n\nSince all of these instances are provided as\norphans, I recommend that you do not use this library\nwithin another library module, so that you don't\nimpose these instances on down-stream consumers of\nyour code.\n\nFor information on writing a test-suite with Cabal\nsee <http://www.haskell.org/cabal/users-guide/#test-suites>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }