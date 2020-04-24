{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "th-lift"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "© 2006 Ian Lynagh, © 2010-2014 Mathieu Boespflug";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Ian Lynagh";
      homepage = "http://github.com/mboes/th-lift";
      url = "";
      synopsis = "Derive Template Haskell's Lift class for datatypes.";
      description = "Derive Template Haskell's Lift class for datatypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if compiler.isGhc && (compiler.version).lt "6.12"
          then [
            (hsPkgs."packedstring" or ((hsPkgs.pkgs-errors).buildDepError "packedstring"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ]
          else [
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
            ] ++ (if compiler.isGhc && (compiler.version).lt "6.12"
            then [
              (hsPkgs."packedstring" or ((hsPkgs.pkgs-errors).buildDepError "packedstring"))
              (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
              ]
            else [
              (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
              ]);
          buildable = true;
          };
        };
      };
    }