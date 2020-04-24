{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "n2o-nitro"; version = "0.11.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marat Khafizov, 2018";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "Nitro Elements, Events and Actions";
      description = "Nitro DSL";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."n2o" or ((hsPkgs.pkgs-errors).buildDepError "n2o"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          ];
        buildable = true;
        };
      };
    }