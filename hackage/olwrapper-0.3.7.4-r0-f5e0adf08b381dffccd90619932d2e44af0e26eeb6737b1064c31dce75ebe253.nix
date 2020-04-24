{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "olwrapper"; version = "0.3.7.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "test";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fay-base" or ((hsPkgs.pkgs-errors).buildDepError "fay-base"))
          (hsPkgs."fay-text" or ((hsPkgs.pkgs-errors).buildDepError "fay-text"))
          (hsPkgs."fay-jquery" or ((hsPkgs.pkgs-errors).buildDepError "fay-jquery"))
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