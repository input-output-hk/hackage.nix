{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "neil"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2010-2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/";
      url = "";
      synopsis = "General tools for Neil";
      description = "General tools for Neil. Typically, I don't bother releasing these tools, and just leave\nthem in the Git repo.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "neil" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ] ++ (pkgs.lib).optionals (!flags.small) [
            (hsPkgs."GoogleChart" or ((hsPkgs.pkgs-errors).buildDepError "GoogleChart"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            ];
          buildable = true;
          };
        };
      };
    }