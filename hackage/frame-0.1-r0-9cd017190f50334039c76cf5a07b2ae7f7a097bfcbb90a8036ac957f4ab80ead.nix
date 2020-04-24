{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "frame"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Adam Dunkley";
      maintainer = "\"Adam Dunkley\" <acd07u@cs.nott.ac.uk>";
      author = "Adam Dunkley";
      homepage = "";
      url = "";
      synopsis = "A simple web framework.";
      description = "A simple web framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."ghc-binary" or ((hsPkgs.pkgs-errors).buildDepError "ghc-binary"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."HDBC-odbc" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-odbc"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."haskelldb-hdbc-odbc" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb-hdbc-odbc"))
          (hsPkgs."haskelldb-hdbc" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb-hdbc"))
          (hsPkgs."haskelldb" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."happstack-fastcgi" or ((hsPkgs.pkgs-errors).buildDepError "happstack-fastcgi"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          ];
        buildable = true;
        };
      exes = {
        "frame-shell" = {
          depends = [
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }