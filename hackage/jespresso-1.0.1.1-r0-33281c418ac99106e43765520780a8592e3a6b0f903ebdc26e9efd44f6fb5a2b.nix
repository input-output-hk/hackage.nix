{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jespresso"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/jespresso";
      url = "";
      synopsis = "Extract all JavaScript from an HTML page and consolidate it in one script.";
      description = "Allows extraction and consolidation of JavaScript code in an HTML page so that it behaves like the original. Consolidation is a process of transforming an HTML page into an equivalent, but containing JavaScript code only in one inlined script tag. Note that the package versions follow Semantic Versioning model (semver.org).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."hxt-tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "hxt-tagsoup"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."language-ecmascript" or ((hsPkgs.pkgs-errors).buildDepError "language-ecmascript"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-encodings" or ((hsPkgs.pkgs-errors).buildDepError "http-encodings"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."data-default-instances-base" or ((hsPkgs.pkgs-errors).buildDepError "data-default-instances-base"))
          ];
        buildable = true;
        };
      exes = {
        "jespresso" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jespresso" or ((hsPkgs.pkgs-errors).buildDepError "jespresso"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unittest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jespresso" or ((hsPkgs.pkgs-errors).buildDepError "jespresso"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            ];
          buildable = true;
          };
        };
      };
    }