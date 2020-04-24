{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hlongurl"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Robin Green 2008";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "Robin Green";
      homepage = "";
      url = "";
      synopsis = "Library and utility interfacing to longurl.org";
      description = "The library provides a Haskell binding to the longurl.org API.\nThe utility finds all URLs in its input that longurl says it can expand,\nand then tries to expand each of them in-place.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          ];
        buildable = true;
        };
      exes = {
        "hlongurl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          buildable = true;
          };
        };
      };
    }