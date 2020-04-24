{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ycextra"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2008, Dmitry Golubovsky and The Yhc Team";
      maintainer = "golubovsky@gmail.com";
      author = "Dmitry Golubovsky";
      homepage = "http://www.haskell.org/haskellwiki/Yhc";
      url = "";
      synopsis = "Additional utilities to work with Yhc Core.";
      description = "Additional utilities for Yhc Core developed as by-products\nof front- and back-ends, also for possible inclusion\nto the Yhc Core package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."yhccore" or ((hsPkgs.pkgs-errors).buildDepError "yhccore"))
          (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ]);
        buildable = true;
        };
      };
    }