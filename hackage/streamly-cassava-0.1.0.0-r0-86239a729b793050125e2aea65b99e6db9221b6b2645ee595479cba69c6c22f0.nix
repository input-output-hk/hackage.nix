{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "streamly-cassava"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Richard Warfield";
      maintainer = "richard@litx.io";
      author = "Richard Warfield";
      homepage = "https://github.com/litxio/streamly-cassava#readme";
      url = "";
      synopsis = "CSV streaming support via cassava for the streamly ecosystem";
      description = "Please see the README on GitHub at <https://github.com/litxio/streamly-cassava#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
          ];
        buildable = true;
        };
      exes = {
        "streamly-cassava-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streaming-cassava"))
            (hsPkgs."streaming-with" or ((hsPkgs.pkgs-errors).buildDepError "streaming-with"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."streamly-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streamly-cassava"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "streamly-cassava-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."streamly-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streamly-cassava"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "streamly-cassava-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streaming-cassava"))
            (hsPkgs."streaming-with" or ((hsPkgs.pkgs-errors).buildDepError "streaming-with"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."streamly-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streamly-cassava"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."weigh" or ((hsPkgs.pkgs-errors).buildDepError "weigh"))
            ];
          buildable = true;
          };
        };
      };
    }