{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "distributed-fork"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "me@utdemir.com";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/distributed-fork";
      url = "";
      synopsis = "Like 'forkIO', but uses remote machines instead of local threads.";
      description = "This library provides a way to offload a computation to another machine.\n\nIt uses pluggable 'Backend''s to spawn remote executors. It currently only supports AWS Lambda using <http://hackage.haskell.org/package/distributed-fork-aws-lambda distributed-fork-aws-lambda> library.\n\nSee <https://github.com/utdemir/distributed-fork README> for the rationale behind the library and \"Control.Distributed.Fork\" module for the usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."distributed-closure" or ((hsPkgs.pkgs-errors).buildDepError "distributed-closure"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-fork" or ((hsPkgs.pkgs-errors).buildDepError "distributed-fork"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }