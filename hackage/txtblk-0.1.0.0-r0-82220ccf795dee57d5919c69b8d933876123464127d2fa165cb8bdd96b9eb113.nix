{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "txtblk"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pharpend2@gmail.com";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A text txtblk.";
      description = "This is a text blocker - it blocks sexual texts. It is intended for\nuse in other contexts, such as an Andorid app or irssi extension.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "txtblk" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }