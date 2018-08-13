{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "xsha1";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "Alex Kropivny <alex.kropivny@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "cryptanalysis of Blizzard's broken SHA-1 implementation.";
      description = "Caution: XSHA1 is weak, and should not be used as a hash.\n\nXSHA1 is used in password and CD key authentication in older Blizzard games\n(Starcraft, Diablo 2) among other things. The fact that it's cryptographically\nweak has been known for years: this is a public analysis of the weakness. The\ngoal is to determine risk posed to users, and find safeguards if possible.\n\n\nThe code is geared for rapid interactive development with GHCI. Excuse the lax conventions.\n\nData.Digest.* implements and explores XSHA1, while Data.Codec.* contains applications.";
      buildType = "Simple";
    };
    components = {
      "xsha1" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.uniplate)
        ];
      };
    };
  }