{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yam-transaction-postgresql";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Daniel YU";
      maintainer = "i@icymint.me";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam-transaction-postgresql#readme";
      url = "";
      synopsis = "";
      description = "Transaction Postgresql Plugin";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yam-app" or ((hsPkgs.pkgs-errors).buildDepError "yam-app"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
          ];
        buildable = true;
        };
      };
    }