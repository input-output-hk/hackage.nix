{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "git-sanity"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "github.com/aloiscochard/git-sanity";
      url = "";
      synopsis = "A sanity checker for your git history.";
      description = "This tool allow you sanity check the history of local git repository.\n\nA 'sane' history is one where there is no interleaved merged.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
          (hsPkgs."machines-io" or ((hsPkgs.pkgs-errors).buildDepError "machines-io"))
          (hsPkgs."machines-process" or ((hsPkgs.pkgs-errors).buildDepError "machines-process"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "git-sanity" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."git-sanity" or ((hsPkgs.pkgs-errors).buildDepError "git-sanity"))
            ];
          buildable = true;
          };
        };
      };
    }