{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "zampolit"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Brian Sniffen";
      maintainer = "bts@alum.mit.edu";
      author = "Brian Sniffen";
      homepage = "https://github.com/briansniffen/zampolit";
      url = "";
      synopsis = "A tool for checking how much work is done on group projects.";
      description = "Zampolit is a tool for checking how much work each contributor to a project is doing.  It produces pretty graphs of word count per author.  This is helpful when collaborating on projects that are mostly text, and do not necessarily break lines reliably or often.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zampolit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HSH" or ((hsPkgs.pkgs-errors).buildDepError "HSH"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }