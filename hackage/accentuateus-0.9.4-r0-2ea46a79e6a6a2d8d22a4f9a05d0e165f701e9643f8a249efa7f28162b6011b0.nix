{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "accentuateus"; version = "0.9.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Spearhead Development, L.L.C.";
      maintainer = "Michael Schade <michael@spearheaddev.com>";
      author = "Spearhead Development, L.L.C.";
      homepage = "http://accentuate.us/";
      url = "";
      synopsis = "A Haskell implementation of the Accentuate.us API.";
      description = "Accentuate.us (<http://accentuate.us/>) is a free\nand open-source web service that makes computer\ninput really easy for over 115 languages. Using\nstatistics, it will automatically add diacritics\n(\\\"special characters\\\") to otherwise plain text.\nIn support of being an open web service, an API is\nprovided and documented at\n<http://accentuate.us/api>, which is implemented\nby this package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }