{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "selda-postgresql"; version = "0.1.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "PostgreSQL backend for the Selda database EDSL.";
      description = "PostgreSQL backend for the Selda database EDSL.\nRequires the PostgreSQL @libpq@ development libraries to be\ninstalled.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."selda" or ((hsPkgs.pkgs-errors).buildDepError "selda"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optional (!flags.haste) (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.11") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
        buildable = true;
        };
      };
    }