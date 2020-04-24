{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quantum-random"; version = "0.6.4"; };
      license = "MIT";
      copyright = "2016";
      maintainer = "cs.hbar+hs@gmail.com";
      author = "Cliff Harvey";
      homepage = "http://github.com/BlackBrane/quantum-random/";
      url = "";
      synopsis = "Retrieve, store and manage real quantum random data.";
      description = "Retrieve, store and manage real quantum random data, originating from vacuum\nfluctuations of the electromagnetic field and served by Australian National\nUniversity.\n\nThe package is designed to ensure quantum random data is promptly available for\nyour application by keeping a sufficient amount locally. When depleted to a\nspecified level, more data is downloaded concurrently over SSL. It can be\nconfigured by specifying the minimum store size (below which more data are\nretrieved) the target store size (the size of the store after retrieval) and\nthe default display style.\n\nFor more information on the API service on which this package is based,\nvisit the ANU QRN webpage at <http://qrng.anu.edu.au/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansigraph" or ((hsPkgs.pkgs-errors).buildDepError "ansigraph"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "qrand" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."quantum-random" or ((hsPkgs.pkgs-errors).buildDepError "quantum-random"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-quantum-random" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quantum-random" or ((hsPkgs.pkgs-errors).buildDepError "quantum-random"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }