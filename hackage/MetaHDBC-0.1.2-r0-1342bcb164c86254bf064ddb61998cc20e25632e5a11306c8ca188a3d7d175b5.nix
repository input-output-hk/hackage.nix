{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "MetaHDBC"; version = "0.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      maintainer = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      author = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Statically checked database access";
      description = "Using Template Haskell and HDBC to do statically checked\ndatabase access.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-odbc" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-odbc"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          ];
        buildable = true;
        };
      };
    }