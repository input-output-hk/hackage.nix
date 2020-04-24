{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { embeded = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "geo-uk"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Marcin Tolysz, (c) Crown copyright, Ordnance Survey and the Ministry of Defence (MOD) 2002. All rights";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/geo-uk";
      url = "";
      synopsis = "High precision conversion between GPS and UK Grid";
      description = "Conversion between GPS and UKGrid Coordinates one approximate and one using table.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bzlib" or ((hsPkgs.pkgs-errors).buildDepError "bzlib"))
          ] ++ (pkgs.lib).optional (flags.embeded) (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"));
        buildable = true;
        };
      };
    }