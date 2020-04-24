{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "CoreErlang"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2008, David Castro Pérez, Henrique Ferreiro García";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "David Castro Pérez <dcastrop@udc.es>\nHenrique Ferreiro García <hferreiro@udc.es>";
      homepage = "http://github.com/amtal/CoreErlang";
      url = "";
      synopsis = "Manipulating Core Erlang source code";
      description = "Facilities for manipulating Core Erlang source code:\nan abstract syntax, parser and pretty-printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
        buildable = true;
        };
      };
    }