{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      split-base = true;
      parsec = true;
      pretty = true;
      generic = true;
      mapdict = false;
      };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "json"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2009 Galois Inc.";
      maintainer = "Sigbjorn Finne <sof@galois.com>";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Support for serialising Haskell to and from JSON";
      description = "JSON (JavaScript Object Notation) is a lightweight data-interchange\nformat. It is easy for humans to read and write. It is easy for\nmachines to parse and generate.  It is based on a subset of the\nJavaScript Programming Language, Standard ECMA-262 3rd Edition -\nDecember 1999.\n\nThis library provides a parser and pretty printer for converting\nbetween Haskell values and JSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then (([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (flags.generic) [
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.pretty) (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
        buildable = true;
        };
      };
    }