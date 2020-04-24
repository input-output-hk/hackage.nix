{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "honi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Patrick Chilton, Niklas Hambüchen";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <niklas@nh2.me>";
      author = "Patrick Chilton, Niklas Hambüchen";
      homepage = "";
      url = "";
      synopsis = "OpenNI 2 binding";
      description = "OpenNI 2 binding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."OpenNI2" or ((hsPkgs.pkgs-errors).sysDepError "OpenNI2"))
          (pkgs."freenect" or ((hsPkgs.pkgs-errors).sysDepError "freenect"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."honi" or ((hsPkgs.pkgs-errors).buildDepError "honi"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          libs = [
            (pkgs."OpenNI2" or ((hsPkgs.pkgs-errors).sysDepError "OpenNI2"))
            (pkgs."freenect" or ((hsPkgs.pkgs-errors).sysDepError "freenect"))
            ];
          buildable = true;
          };
        };
      };
    }