{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ribbit"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "2019 Owens Murray, LLC.";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/ribbit";
      url = "";
      synopsis = "Type-level Relational DB language.";
      description = "Ribbit is yet another type safe relational database\nlibrary for Haskell, heavily inspired by the\namazing Servant library. The goal is to create a\ntype-level language for defining table schemas \"as\na type\", queries that operate on those schemas, and,\ntangentially, \"backends\" that can do something useful\nwith those types like talk to an actual database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Only" or ((hsPkgs.pkgs-errors).buildDepError "Only"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }