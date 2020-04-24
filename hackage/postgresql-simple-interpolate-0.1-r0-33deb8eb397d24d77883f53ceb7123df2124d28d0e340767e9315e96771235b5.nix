{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "postgresql-simple-interpolate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "©2019 Elliot Cameron";
      maintainer = "eacameron@gmail.com";
      author = "Elliot Cameron";
      homepage = "https://github.com/3noch/postgresql-simple-interpolate";
      url = "";
      synopsis = "Interpolated SQL queries via quasiquotation";
      description = "Interpolated SQL queries via quasiquotation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }