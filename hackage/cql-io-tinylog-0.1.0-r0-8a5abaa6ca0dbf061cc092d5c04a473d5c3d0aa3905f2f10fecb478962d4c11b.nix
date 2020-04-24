{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "cql-io-tinylog"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "roman@pkaboo.org";
      author = "Roman S. Borschel";
      homepage = "https://gitlab.com/romanb/cql-io-tinylog";
      url = "";
      synopsis = "Tinylog integration for cql-io.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cql-io" or ((hsPkgs.pkgs-errors).buildDepError "cql-io"))
          (hsPkgs."tinylog" or ((hsPkgs.pkgs-errors).buildDepError "tinylog"))
          ];
        buildable = true;
        };
      };
    }