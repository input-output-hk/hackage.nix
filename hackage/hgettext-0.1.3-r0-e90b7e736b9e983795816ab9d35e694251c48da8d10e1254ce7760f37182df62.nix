{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hgettext"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2009 Vasyl Pasternak";
      maintainer = "vasyl.pasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "";
      url = "";
      synopsis = "Bindings to libintl.h (gettext, bindtextdomain)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "hgettext" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
            ];
          buildable = true;
          };
        };
      };
    }