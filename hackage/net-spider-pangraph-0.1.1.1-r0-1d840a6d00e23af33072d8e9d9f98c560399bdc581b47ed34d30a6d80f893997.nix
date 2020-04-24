{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-pangraph"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "Conversion between net-spider and pangraph";
      description = "Conversion between <https://hackage.haskell.org/package/net-spider net-spider> and <https://hackage.haskell.org/package/pangraph pangraph>. See README.md for detail.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."pangraph" or ((hsPkgs.pkgs-errors).buildDepError "pangraph"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."greskell" or ((hsPkgs.pkgs-errors).buildDepError "greskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."net-spider-pangraph" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-pangraph"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pangraph" or ((hsPkgs.pkgs-errors).buildDepError "pangraph"))
            (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."doctest-discover" or ((hsPkgs.pkgs-errors).buildDepError "doctest-discover"))
            ];
          buildable = true;
          };
        };
      };
    }