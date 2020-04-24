{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "opensoundcontrol-ht"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2009-2013";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskell OpenSoundControl utilities";
      description = "Some additional modules I use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* a @Transport@ handle type for writing to files\n\n* a @Transport@ monad type for writing to a bytestring without IO.\n\nAlso see the supercollider-ht package which uses this one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }