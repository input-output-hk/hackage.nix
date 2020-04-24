{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { newbase = true; splitbase = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "regex-pcre-builtin"; version = "0.95.0.8.8.35"; };
      license = "BSD-3-Clause";
      copyright = "See LICENSE file";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://hackage.haskell.org/package/regex-pcre";
      url = "http://code.haskell.org/regex-pcre/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The PCRE backend to accompany regex-base, with bundled code from www.pcre.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.newbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
              ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        buildable = true;
        };
      };
    }