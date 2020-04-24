{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sha-streams"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thu@hypered.io";
      author = "Vo Minh Thu";
      homepage = "https://github.com/noteed/sha-streams";
      url = "";
      synopsis = "SHA hashes for io-streams.";
      description = "SHA hashes for io-streams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          ];
        buildable = true;
        };
      exes = {
        "sha-streams" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
            (hsPkgs."sha-streams" or ((hsPkgs.pkgs-errors).buildDepError "sha-streams"))
            ];
          buildable = true;
          };
        };
      };
    }