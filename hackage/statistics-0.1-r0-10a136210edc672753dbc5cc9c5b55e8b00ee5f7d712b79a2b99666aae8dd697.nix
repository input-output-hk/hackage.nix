{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "statistics"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://darcs.serpentine.com/statistics";
      url = "";
      synopsis = "A library of statistical types, data, and functions.";
      description = "A library of statistical types, data, and functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
          (hsPkgs."uvector" or ((hsPkgs.pkgs-errors).buildDepError "uvector"))
          (hsPkgs."uvector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "uvector-algorithms"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
        buildable = true;
        };
      };
    }