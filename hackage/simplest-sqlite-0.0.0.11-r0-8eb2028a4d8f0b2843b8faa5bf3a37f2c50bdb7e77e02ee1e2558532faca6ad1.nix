{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simplest-sqlite"; version = "0.0.0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      author = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      homepage = "comming soon";
      url = "";
      synopsis = "Simplest SQLite3 binding";
      description = "yet";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."exception-hierarchy" or ((hsPkgs.pkgs-errors).buildDepError "exception-hierarchy"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        libs = [
          (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"))
          ];
        buildable = true;
        };
      };
    }