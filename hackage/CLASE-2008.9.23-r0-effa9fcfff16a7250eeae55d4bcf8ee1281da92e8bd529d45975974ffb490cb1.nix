{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "CLASE"; version = "2008.9.23"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "clase@zonetora.co.uk";
      author = "Tristan Allwood";
      homepage = "http://www.zonetora.co.uk/clase/";
      url = "";
      synopsis = "Cursor Library for A Structured Editor";
      description = "A library to aid the development of structured editors that\nrequire a zipper-like interface to the language being edited.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }