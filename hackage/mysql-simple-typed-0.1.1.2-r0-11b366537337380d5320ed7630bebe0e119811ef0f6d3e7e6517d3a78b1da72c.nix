{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-simple-typed"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-5 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/mysql-simple-typed";
      url = "";
      synopsis = "Typed extension to mysql simple";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mysql" or ((hsPkgs.pkgs-errors).buildDepError "mysql"))
          (hsPkgs."mysql-simple" or ((hsPkgs.pkgs-errors).buildDepError "mysql-simple"))
          (hsPkgs."typedquery" or ((hsPkgs.pkgs-errors).buildDepError "typedquery"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }