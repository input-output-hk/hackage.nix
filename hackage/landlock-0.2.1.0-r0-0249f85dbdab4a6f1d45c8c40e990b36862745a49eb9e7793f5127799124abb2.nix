{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { landlocked = true; werror = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "landlock"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Nicolas Trangez";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "https://github.com/NicolasT/landlock-hs";
      url = "";
      synopsis = "Haskell bindings for the Linux Landlock API";
      description = "This library exposes Haskell bindings for the Linux kernel Landlock API.\n\nThe Linux kernel Landlock API provides unprivileged access control. The goal\nof Landlock is to enable to restrict ambient rights (e.g. global filesystem\naccess) for a set of processes. Because Landlock is a stackable LSM, it makes\npossible to create safe security sandboxes as new security layers in addition\nto the existing system-wide access-controls. This kind of sandbox is expected\nto help mitigate the security impact of bugs or unexpected/malicious\nbehaviors in user space applications. Landlock empowers any process,\nincluding unprivileged ones, to securely restrict themselves.\n\nFor more information, see the <https://landlock.io/ Landlock homepage> and its\n<https://docs.kernel.org/userspace-api/landlock.html kernel documentation>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."landlock".components.sublibs.landlock-internal or (errorHandler.buildDepError "landlock:landlock-internal"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      sublibs = {
        "landlock-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."psx" or (errorHandler.buildDepError "psx"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
            ];
          buildable = true;
          };
        };
      exes = {
        "landlocked" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."landlock" or (errorHandler.buildDepError "landlock"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = if !flags.landlocked then false else true;
          };
        };
      tests = {
        "landlock-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."landlock" or (errorHandler.buildDepError "landlock"))
            (hsPkgs."landlock".components.sublibs.landlock-internal or (errorHandler.buildDepError "landlock:landlock-internal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        "landlock-test-threaded" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."landlock" or (errorHandler.buildDepError "landlock"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "landlock-readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."landlock" or (errorHandler.buildDepError "landlock"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit.components.exes.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
            ];
          buildable = true;
          };
        "landlocked-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.landlock.components.exes.landlocked or (pkgs.buildPackages.landlocked or (errorHandler.buildToolDepError "landlock:landlocked")))
            ];
          buildable = if !flags.landlocked then false else true;
          };
        };
      };
    }