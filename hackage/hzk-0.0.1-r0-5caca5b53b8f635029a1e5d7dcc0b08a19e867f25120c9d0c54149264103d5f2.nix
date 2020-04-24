{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "hzk"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dgvncsz0f";
      author = "dsouza@c0d3.xxx";
      homepage = "http://github.com/dgvncsz0f/hzk";
      url = "";
      synopsis = "Haskell client library for Apache Zookeeper";
      description = "A haskell binding to Apache Zookeeper C library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."zookeeper_mt" or ((hsPkgs.pkgs-errors).sysDepError "zookeeper_mt"))
          ];
        buildable = true;
        };
      tests = {
        "test-zookeeper" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          libs = [
            (pkgs."zookeeper_mt" or ((hsPkgs.pkgs-errors).sysDepError "zookeeper_mt"))
            ];
          buildable = true;
          };
        };
      };
    }