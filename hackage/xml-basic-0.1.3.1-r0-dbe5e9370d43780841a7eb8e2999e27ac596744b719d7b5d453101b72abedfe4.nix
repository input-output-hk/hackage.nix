{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "xml-basic"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Basics for XML/HTML representation and processing";
      description = "We provide basic data types for XML representation,\nlike names, attributes, entities.\nYes we try hard to get type safe XML handling out of Haskell 98.\nWe also provide information about exceptional HTML tags,\nlike self-closing tags.\nThis package provides common functionality\nthat is both needed in list (tagchup) and tree (wraxml) representations of XML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (if compiler.isJhc && true
            then [
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."applicative" or ((hsPkgs.pkgs-errors).buildDepError "applicative"))
              ]
            else [
              (hsPkgs."special-functors" or ((hsPkgs.pkgs-errors).buildDepError "special-functors"))
              ]));
        buildable = true;
        };
      };
    }