{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ruin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Nicolas Frisby";
      maintainer = "nicolas.frisby@gmail.com";
      author = "Nicolas Frisby";
      homepage = "";
      url = "";
      synopsis = "Pliable records";
      description = "@ruin@ is a DSL for working with record types. It focuses on\nconverting between conventionally-declared record types and\nsupporting named function arguments.\n\n* Uses @-XOverloadedLabels@, so that @#x@ is a first-class label for\nthe field named @x@.\n* Provides @GHC.Generics@ defaults.\n* Named arguments: @\\\\[rna|x y z] -> (x,y,z)@ inhabits @(\"x\" :\\@ a,\"y\"\n:\\@ b,\"z\" :\\@ c) -> (a,b,c)@.\n* Relies on @-XDuplicateRecordFields@; the generic defaults only\nwork if record selector names do not have distinguishing prefices.\n* Custom type errors, such as @ruin: Could not find the field \\`x\\'\nin the type ...@\n* \"Data.Ruin.R\" provides anonymous record types where the order of\nfields is irrelevant.\n\nSee the \"Data.Ruin\" module for an overview.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ruin" or ((hsPkgs.pkgs-errors).buildDepError "ruin"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."should-not-typecheck" or ((hsPkgs.pkgs-errors).buildDepError "should-not-typecheck"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }