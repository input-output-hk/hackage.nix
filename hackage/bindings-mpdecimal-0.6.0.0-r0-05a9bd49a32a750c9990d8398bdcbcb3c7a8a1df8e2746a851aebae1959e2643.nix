{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-mpdecimal"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/bindings-mpdecimal";
      url = "";
      synopsis = "bindings to mpdecimal library";
      description = "mpdecimal provides correctly rounded\narbitrary precision decimal floating point arithmetic.\n\nPlease see\n\n<http://www.github.com/massysett/bindings-mpdecimal>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        buildable = true;
        };
      };
    }