{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "slave-thread"; version = "1.0.2.7"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/slave-thread";
      url = "";
      synopsis = "A fundamental solution to ghost threads and silent exceptions";
      description = "Vanilla thread management in Haskell is low level and\nit does not approach the problems related to thread deaths.\nWhen it's used naively the following typical problems arise:\n\n* When a forked thread dies due to an uncaught exception,\nthe exception does not get raised in the main thread,\nwhich is why the program continues to run as if nothing happened,\ni.e., with the presumption that the already dead thread is running normally.\nNaturally this may very well bring your program to a chaotic state.\n\n* Another issue is that one thread dying does not\naffect any of the threads forked from it.\nThat's why your program may be accumulating ghost threads.\n\n* Ever dealt with your program ignoring the \\<Ctrl-C\\> strikes?\n\nThis library solves all the issues above with a concept of a slave thread.\nA slave thread has the following properties:\n\n1. When it dies for whatever reason (exception or finishing normally)\nit kills all the slave threads that were forked from it.\nThis protects you from ghost threads.\n\n2. It waits for all slaves to die and execute their finalizers\nbefore executing its own finalizer and getting released itself.\nThis gives you hierarchical releasing of resources.\n\n3. When a slave thread dies with an uncaught exception\nit reraises it in the master thread.\nThis protects you from silent exceptions\nand lets you be sure of getting informed\nif your program gets brought to an erroneous state.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deferred-folds" or ((hsPkgs.pkgs-errors).buildDepError "deferred-folds"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            (hsPkgs."SafeSemaphore" or ((hsPkgs.pkgs-errors).buildDepError "SafeSemaphore"))
            (hsPkgs."slave-thread" or ((hsPkgs.pkgs-errors).buildDepError "slave-thread"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }