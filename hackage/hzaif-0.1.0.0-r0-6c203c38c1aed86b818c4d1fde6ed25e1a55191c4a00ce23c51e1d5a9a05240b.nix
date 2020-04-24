{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hzaif"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2016, I amd D";
      maintainer = "d.kupanhy@gmail.com";
      author = "I am D";
      homepage = "http://github.com/i-amd3/hzaif";
      url = "";
      synopsis = "This package is Zaif Exchange Api wrapper";
      description = "zaif is Bitcoin/Monacoin trading marketplace in Japan, And this package uses zaif exchange api.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      exes = {
        "hzaif-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hzaif" or ((hsPkgs.pkgs-errors).buildDepError "hzaif"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hzaif-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hzaif" or ((hsPkgs.pkgs-errors).buildDepError "hzaif"))
            ];
          buildable = true;
          };
        };
      };
    }