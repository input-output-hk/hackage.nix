{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; ghc76 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hsp"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@gmail.com>";
      author = "Niklas Broberg, Joel Bjornson";
      homepage = "http://patch-tag.com/r/nibro/hsp";
      url = "";
      synopsis = "Haskell Server Pages is a library for writing dynamic server-side web pages.";
      description = "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of\nwriting dynamic server-side web pages. Features include:\n\n* Embedded XML syntax\n\n* A (low-to-mid-level) programming model for writing dynamic web pages\n\n* A cgi-handler utility (as a separate package, hsp-cgi)\n\nFor details on usage, please see the website, and the author's thesis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."harp" or ((hsPkgs.pkgs-errors).buildDepError "harp"))
          (hsPkgs."hsx" or ((hsPkgs.pkgs-errors).buildDepError "hsx"))
          (hsPkgs."HJScript" or ((hsPkgs.pkgs-errors).buildDepError "HJScript"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ]) ++ (if flags.ghc76
          then [
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."old-exception" or ((hsPkgs.pkgs-errors).buildDepError "old-exception"))
            ]
          else [
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            ]);
        buildable = true;
        };
      };
    }