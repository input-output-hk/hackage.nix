{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { binary = true; parsec = true; attoparsec = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "parsers"; version = "0.12.10"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/parsers/";
      url = "";
      synopsis = "Parsing combinators";
      description = "This library provides convenient combinators for working with and building parsing combinator libraries.\n\nGiven a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you\nget access to a large number of canned definitions. Instances exist for the parsers provided by @parsec@,\n@attoparsec@ and base’s \"Text.Read\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
          (hsPkgs."charset" or ((hsPkgs.pkgs-errors).buildDepError "charset"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.attoparsec) (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"));
        buildable = true;
        };
      tests = {
        "quickcheck" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            ] ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.attoparsec) (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"));
          buildable = true;
          };
        };
      };
    }