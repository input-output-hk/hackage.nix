{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabalg"; version = "0.2.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "malikov.d.y@gmail.com";
      author = "Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "alias for cabal install from given git repo";
      description = "'cabalg' is an alias for installing cabal package from a git source repository.\n\nE.g.\n\n@\$ git clone https:\\/\\/github.com\\/author\\/foo\n\$ git clone https:\\/\\/github.com\\/author\\/bar\n\$ cabal install foo\\/foo.cabal bar\\/bar.cabal baz.cabal\n@\n\ncould be abbreviated by\n\n@\$ cabalg https:\\/\\/github.com\\/author\\/foo https:\\/\\/github.com\\/author\\/bar -- biegunka.cabal\n@\n\nIt also supports arbitrary git revisions mentioning like\n\n@ \$ cabalg https:\\/\\/github.com\\/baz\\/quux\\@f524f97\n@\n\nNecessary arguments could be passed to 'cabal install' with '--' delimiter like\n\n@\$ cabalg \\<repo1\\> ... \\<repoN\\> [\\-\\- \\<cabal-install args\\>]\n@\n\nPlease notice, that '--single-branch' flag  comes with git-1.7.10 (<https://lkml.org/lkml/2012/3/28/418>) and later, so you probably want to have it.\n\nIt's supposed to be Windows-compatible (not sure about the tests)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "cabalg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cabalg" or ((hsPkgs.pkgs-errors).buildDepError "cabalg"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }