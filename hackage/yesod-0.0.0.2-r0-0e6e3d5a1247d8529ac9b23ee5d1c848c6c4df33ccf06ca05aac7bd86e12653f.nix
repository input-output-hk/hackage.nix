{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; buildsamples = false; nolib = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/code.html";
      url = "";
      synopsis = "A library for creating RESTful web applications.";
      description = "This package stradles the line between framework and simply a controller. It provides minimal support for model and view, mostly focusing on making a controller which adheres strictly to RESTful principles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."authenticate" or ((hsPkgs.pkgs-errors).buildDepError "authenticate"))
          (hsPkgs."predicates" or ((hsPkgs.pkgs-errors).buildDepError "predicates"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."web-encodings" or ((hsPkgs.pkgs-errors).buildDepError "web-encodings"))
          (hsPkgs."data-object" or ((hsPkgs.pkgs-errors).buildDepError "data-object"))
          (hsPkgs."data-object-yaml" or ((hsPkgs.pkgs-errors).buildDepError "data-object-yaml"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."control-monad-attempt" or ((hsPkgs.pkgs-errors).buildDepError "control-monad-attempt"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."convertible-text" or ((hsPkgs.pkgs-errors).buildDepError "convertible-text"))
          (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
          (hsPkgs."data-object-json" or ((hsPkgs.pkgs-errors).buildDepError "data-object-json"))
          (hsPkgs."attempt" or ((hsPkgs.pkgs-errors).buildDepError "attempt"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          (hsPkgs."safe-failure" or ((hsPkgs.pkgs-errors).buildDepError "safe-failure"))
          ];
        buildable = if flags.nolib then false else true;
        };
      exes = {
        "yesod" = {
          depends = [
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            ];
          buildable = true;
          };
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        "helloworld" = {
          buildable = if flags.buildsamples then true else false;
          };
        "hellotemplate" = {
          buildable = if flags.buildsamples then true else false;
          };
        "fact" = { buildable = if flags.buildsamples then true else false; };
        "i18n" = { buildable = if flags.buildsamples then true else false; };
        "pretty-yaml" = {
          buildable = if flags.buildsamples then true else false;
          };
        "tweedle" = { buildable = if flags.buildsamples then true else false; };
        };
      };
    }