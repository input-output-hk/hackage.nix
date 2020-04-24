{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "binding-wx"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://github.com/accursoft/binding";
      url = "";
      synopsis = "Data Binding in WxHaskell";
      description = "Bind mutable data and lists to WxHaskell widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."binding-core" or ((hsPkgs.pkgs-errors).buildDepError "binding-core"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."binding-core" or ((hsPkgs.pkgs-errors).buildDepError "binding-core"))
            (hsPkgs."binding-wx" or ((hsPkgs.pkgs-errors).buildDepError "binding-wx"))
            ];
          buildable = true;
          };
        "lists" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."binding-core" or ((hsPkgs.pkgs-errors).buildDepError "binding-core"))
            (hsPkgs."binding-wx" or ((hsPkgs.pkgs-errors).buildDepError "binding-wx"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }