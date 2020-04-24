{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; cli = false; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "wcwidth"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/wcwidth/";
      url = "";
      synopsis = "Native wcwidth.";
      description = "Bindings for your system's native wcwidth and a command line tool to examine\nthe widths assigned by it. The command line tool can compile a width table\nto Haskell code that assigns widths to the Char type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "wcwidth-tools" = {
          depends = [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.cli then true else false;
          };
        };
      };
    }