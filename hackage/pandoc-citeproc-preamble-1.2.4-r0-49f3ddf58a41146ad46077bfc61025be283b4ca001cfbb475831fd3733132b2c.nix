{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-citeproc-preamble"; version = "1.2.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "spwhitton@spwhitton.name";
      author = "Sean Whitton";
      homepage = "https://github.com/spwhitton/pandoc-citeproc-preamble";
      url = "";
      synopsis = "Insert a preamble before pandoc-citeproc's bibliography";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pandoc-citeproc-preamble" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }