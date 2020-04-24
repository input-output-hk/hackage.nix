{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      unicode = true;
      editline = true;
      parsec3 = true;
      readline = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "alms"; version = "0.6.5"; };
      license = "BSD-3-Clause";
      copyright = "2011, Jesse A. Tov";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/pubs/alms";
      url = "";
      synopsis = "a practical affine language";
      description = "Alms is an experimental, general-purpose programming language that\nsupports practical affine types. To offer the expressiveness of\nGirard’s linear logic while keeping the type system light and\nconvenient, Alms uses expressive kinds that minimize notation while\nmaximizing polymorphism between affine and unlimited types.\nA key feature of Alms is the ability to introduce abstract affine types\nvia ML-style signature ascription. In Alms, an interface can impose\nstiffer resource usage restrictions than the principal usage\nrestrictions of its implementation. This form of sealing allows the type\nsystem to naturally and directly express a variety of resource\nmanagement protocols from special-purpose type systems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alms" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."incremental-sat-solver" or ((hsPkgs.pkgs-errors).buildDepError "incremental-sat-solver"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
            ] ++ (if flags.readline
            then [
              (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
              ]
            else (pkgs.lib).optional (flags.editline) (hsPkgs."editline" or ((hsPkgs.pkgs-errors).buildDepError "editline")))) ++ [
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }