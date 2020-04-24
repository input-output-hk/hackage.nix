{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { executable = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "language-dot"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Galois, Inc.";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "A library for the analysis and creation of Graphviz DOT files";
      description = "A library for the analysis and creation of Graphviz DOT files.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "ppdot" = { buildable = if flags.executable then true else false; };
        };
      };
    }