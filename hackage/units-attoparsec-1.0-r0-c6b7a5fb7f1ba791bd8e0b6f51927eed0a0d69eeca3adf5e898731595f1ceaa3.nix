{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "units-attoparsec"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "João Cristóvão <jmacristovao@gmail.com>";
      author = "João Cristóvão <jmacristovao@gmail.com>";
      homepage = "https://github.com/jcristovao/units-attoparsec";
      url = "";
      synopsis = "Attoparsec parsers for the units package";
      description = "This package provides parsers for the units defined in the\n@units-defs@ package, used with @units@.\nUser contributions to this package are strongly encouraged. Please\nsubmit pull requests!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."units" or ((hsPkgs.pkgs-errors).buildDepError "units"))
          (hsPkgs."units-defs" or ((hsPkgs.pkgs-errors).buildDepError "units-defs"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }