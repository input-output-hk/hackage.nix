{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "interpolatedstring-qq-mwotton";
        version = "0.1.1";
        };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com> (-mwotton version very slightly changed by mwotton@gmail.com)";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "DO NOT USE THIS. interpolatedstring-qq works now.";
      description = "DO NOT USE THIS. interpolatedstring-qq works now.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta-mwotton" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta-mwotton"))
          ];
        buildable = true;
        };
      };
    }