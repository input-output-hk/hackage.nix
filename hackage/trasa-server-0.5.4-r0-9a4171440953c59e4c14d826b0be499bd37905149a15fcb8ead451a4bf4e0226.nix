{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "trasa-server"; version = "0.5.4"; };
      license = "MIT";
      copyright = "© 2017-2019 Andrew Martin\n© 2017-2019 Kyle McKean";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>\nKyle McKean <mckean.kylej@gmail.com>\nchessai <chessai1996@gmail.com>";
      author = "Andrew Martin\nKyle McKean";
      homepage = "https://github.com/haskell-trasa/trasa";
      url = "";
      synopsis = "Type safe web server";
      description = "WAI integration for trasa";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."trasa" or ((hsPkgs.pkgs-errors).buildDepError "trasa"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }