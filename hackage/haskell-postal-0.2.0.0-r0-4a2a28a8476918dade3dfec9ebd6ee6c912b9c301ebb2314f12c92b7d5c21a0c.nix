{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-postal"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Fábián Tamás László";
      maintainer = "giganetom@gmail.com";
      author = "Fábián Tamás László";
      homepage = "https://github.com/netom/haskell-postal#readme";
      url = "";
      synopsis = "Haskell binding for the libpostal library";
      description = "Provides an interface for the libpostal NLP library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libpostal" or ((hsPkgs.pkgs-errors).pkgConfDepError "libpostal"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-postal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
            ];
          pkgconfig = [
            (pkgconfPkgs."libpostal" or ((hsPkgs.pkgs-errors).pkgConfDepError "libpostal"))
            ];
          buildable = true;
          };
        };
      };
    }