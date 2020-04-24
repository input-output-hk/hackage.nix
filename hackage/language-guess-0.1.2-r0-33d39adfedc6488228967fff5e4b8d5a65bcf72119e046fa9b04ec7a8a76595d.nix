{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "language-guess"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2014 Tingtun AS";
      maintainer = "cra+code@cra.no";
      author = "Christian Rødli Amble";
      homepage = "";
      url = "";
      synopsis = "Guess at which language a text is written in using\ntrigrams.";
      description = "Guess at which language a text is written in using\ntrigrams, based on the PEAR module Text_LanguageDetect.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.0.0") (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"));
        buildable = true;
        };
      };
    }