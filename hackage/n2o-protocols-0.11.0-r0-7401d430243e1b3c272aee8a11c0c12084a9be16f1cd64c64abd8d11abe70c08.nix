{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "n2o-protocols"; version = "0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "N2O Protocols Starter Pack";
      description = "N2O Protocols: Interfaces and Implementations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."n2o" or ((hsPkgs.pkgs-errors).buildDepError "n2o"))
          (hsPkgs."nitro" or ((hsPkgs.pkgs-errors).buildDepError "nitro"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bert" or ((hsPkgs.pkgs-errors).buildDepError "bert"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          ];
        buildable = true;
        };
      };
    }