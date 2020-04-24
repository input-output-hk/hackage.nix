{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "pipes-safe"; version = "2.2.5"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2014 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Safety for the pipes ecosystem";
      description = "This package adds resource management and exception handling to the @pipes@\necosystem.\n\nNotable features include:\n\n* /Resource Safety/: Guarantee finalization using @finally@, @bracket@ and\nmore\n\n* /Exception Safety/: Even against asynchronous exceptions!\n\n* /Laziness/: Only acquire resources when you need them\n\n* /Promptness/: Finalize resources early when you are done with them\n\n* /Native Exception Handling/: Catch and resume from exceptions inside pipes\n\n* /No Buy-in/: Mix resource-safe pipes with unmanaged pipes using @hoist@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          ];
        buildable = true;
        };
      };
    }