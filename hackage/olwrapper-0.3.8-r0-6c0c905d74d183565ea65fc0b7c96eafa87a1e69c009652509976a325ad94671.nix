{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "olwrapper"; version = "0.3.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "Haskell OpenLayers Wrapper\n\n* the project has development status\n\n* the library is also the tutorial\n\n* for a full documentation please read my diploma thesis (TU Vienna) - fully available in summer 2015";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."fay" or ((hsPkgs.pkgs-errors).buildDepError "fay"))
          (hsPkgs."fay-text" or ((hsPkgs.pkgs-errors).buildDepError "fay-text"))
          (hsPkgs."fay-jquery" or ((hsPkgs.pkgs-errors).buildDepError "fay-jquery"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
          (hsPkgs."snaplet-fay" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-fay"))
          (hsPkgs."snap-loader-static" or ((hsPkgs.pkgs-errors).buildDepError "snap-loader-static"))
          (hsPkgs."snap-loader-dynamic" or ((hsPkgs.pkgs-errors).buildDepError "snap-loader-dynamic"))
          ];
        buildable = true;
        };
      exes = {
        "olwrapper" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."fay" or ((hsPkgs.pkgs-errors).buildDepError "fay"))
            (hsPkgs."fay-text" or ((hsPkgs.pkgs-errors).buildDepError "fay-text"))
            (hsPkgs."fay-jquery" or ((hsPkgs.pkgs-errors).buildDepError "fay-jquery"))
            (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."snaplet-fay" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-fay"))
            (hsPkgs."snap-loader-static" or ((hsPkgs.pkgs-errors).buildDepError "snap-loader-static"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."snap-loader-dynamic" or ((hsPkgs.pkgs-errors).buildDepError "snap-loader-dynamic"));
          buildable = true;
          };
        };
      };
    }