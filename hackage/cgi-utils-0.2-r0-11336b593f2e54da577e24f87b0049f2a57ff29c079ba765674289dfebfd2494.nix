{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "cgi-utils"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris Done (chrisdone@gmail.com)";
      author = "Chris Done (chrisdone@gmail.com)";
      homepage = "http://github.com/chrisdone/haskell-cgi-utils";
      url = "";
      synopsis = "Simple modular utilities for CGI/FastCGI (sessions, etc.)";
      description = "Simple modular utilities for CGI/FastCGI that one tends to always need including sessions state.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }