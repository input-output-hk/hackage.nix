{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "AppleScript"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Wouter Swierstra <wouter.swierstra@gmail.com>, Reiner Pope <reiner.pope@gmail.com>";
      homepage = "https://github.com/reinerp/haskell-AppleScript";
      url = "";
      synopsis = "Call AppleScript from Haskell, and then call back into Haskell.";
      description = "This package enables you to compile and execute AppleScript code from\nHaskell, and provides support for this AppleScript code to call back\ninto Haskell. To get started, see \"Foreign.AppleScript.Rich\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isOsx
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
            (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"));
        buildable = if system.isOsx then true else false;
        };
      };
    }