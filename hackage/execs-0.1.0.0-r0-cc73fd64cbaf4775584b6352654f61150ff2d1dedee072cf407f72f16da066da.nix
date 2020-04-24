{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "execs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Sergey N. Yashin";
      maintainer = "yashin.sergey@gmail.com";
      author = "Sergey N. Yashin";
      homepage = "https://github.com/wapxmas/execs#readme";
      url = "";
      synopsis = "Tool to run stack exec prj-exe more easy";
      description = "Tool to run stack exec prj-exe more easy";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "execs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."execs" or ((hsPkgs.pkgs-errors).buildDepError "execs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }