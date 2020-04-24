{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-rs-notify"; version = "0.1.0.18"; };
      license = "BSD-3-Clause";
      copyright = "2018 NoRedInk";
      maintainer = "christoph@noredink.com";
      author = "Christoph Hermann";
      homepage = "https://github.com/NoRedInk/hs-rs-notify#readme";
      url = "";
      synopsis = "Experimental! Wraps this awesome rust library so you can use it in haskell. https://docs.rs/crate/notify";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "notify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-rs-notify" or ((hsPkgs.pkgs-errors).buildDepError "hs-rs-notify"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          libs = [
            (pkgs."notifier" or ((hsPkgs.pkgs-errors).sysDepError "notifier"))
            (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hs-rs-notify-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-rs-notify" or ((hsPkgs.pkgs-errors).buildDepError "hs-rs-notify"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          buildable = true;
          };
        };
      };
    }