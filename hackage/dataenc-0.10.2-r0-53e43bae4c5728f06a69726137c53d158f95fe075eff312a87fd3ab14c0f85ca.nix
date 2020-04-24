{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { large_base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "dataenc"; version = "0.10.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Magnus Therning, 2007";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Data encoding library";
      description = "Data encoding library currently providing Uuencode, Base64,\nBase64Url, Base32, Base32Hex, and Base16.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.large_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
        buildable = true;
        };
      };
    }