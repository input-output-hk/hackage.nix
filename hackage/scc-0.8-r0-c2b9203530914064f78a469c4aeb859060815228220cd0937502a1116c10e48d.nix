{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "scc"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008-2013 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/";
      url = "";
      synopsis = "Streaming component combinators";
      description = "SCC is a layered library of Streaming Component Combinators. The lowest layer in \"Control.Concurent.SCC.Streams\"\ndefines stream abstractions and nested producer-consumer coroutine pairs based on the Coroutine monad transformer.\nOn top of that are streaming component types, a number of primitive streaming components and a set of component\ncombinators. Finally, there is an executable that exposes all the framework functionality in a command-line shell.\n\nThe original library design is based on paper <http://conferences.idealliance.org/extreme/html/2006/Blazevic01/EML2006Blazevic01.html>\n\nMario Bla&#382;evi&#263;, Streaming component combinators, Extreme Markup Languages, 2006.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
          (hsPkgs."incremental-parser" or ((hsPkgs.pkgs-errors).buildDepError "incremental-parser"))
          (hsPkgs."monad-parallel" or ((hsPkgs.pkgs-errors).buildDepError "monad-parallel"))
          (hsPkgs."monad-coroutine" or ((hsPkgs.pkgs-errors).buildDepError "monad-coroutine"))
          ];
        buildable = true;
        };
      exes = {
        "shsh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
            (hsPkgs."incremental-parser" or ((hsPkgs.pkgs-errors).buildDepError "incremental-parser"))
            (hsPkgs."monad-parallel" or ((hsPkgs.pkgs-errors).buildDepError "monad-parallel"))
            (hsPkgs."monad-coroutine" or ((hsPkgs.pkgs-errors).buildDepError "monad-coroutine"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
            (hsPkgs."incremental-parser" or ((hsPkgs.pkgs-errors).buildDepError "incremental-parser"))
            (hsPkgs."monad-parallel" or ((hsPkgs.pkgs-errors).buildDepError "monad-parallel"))
            (hsPkgs."monad-coroutine" or ((hsPkgs.pkgs-errors).buildDepError "monad-coroutine"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }