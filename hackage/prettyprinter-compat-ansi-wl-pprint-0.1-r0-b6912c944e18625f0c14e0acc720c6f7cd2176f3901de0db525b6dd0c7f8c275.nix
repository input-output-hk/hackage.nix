{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prettyprinter-compat-ansi-wl-pprint";
        version = "0.1";
        };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky at google>";
      author = "David Luposchainsky";
      homepage = "http://github.com/quchen/prettyprinter";
      url = "";
      synopsis = "Prettyprinter compatibility module for previous users of the ansi-wl-pprint package.";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
          ];
        buildable = true;
        };
      };
    }