{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pisigma"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
      author = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>,\nNils Anders Danielsson <nad@cs.nott.ac.uk>,\nNicolas Oury <Nicolas.Oury@ed.ac.uk>,\nDarin Morrison <dwm@cs.nott.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "dependently typed core language";
      description = "dependently typed core language";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."haskeline-class" or ((hsPkgs.pkgs-errors).buildDepError "haskeline-class"))
          (hsPkgs."mpppc" or ((hsPkgs.pkgs-errors).buildDepError "mpppc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = { "pisigma" = { buildable = true; }; };
      };
    }