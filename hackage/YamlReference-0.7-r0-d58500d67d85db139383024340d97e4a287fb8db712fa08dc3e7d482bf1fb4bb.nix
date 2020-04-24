{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "YamlReference"; version = "0.7"; };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007, 2008";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "www.ben-kiki.org/oren/YamlReference";
      url = "www.ben-kiki.org/oren/YamlReference/YamlReference-0.7.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@)\nthat allows accessing it from the command line, converting\nYAML files to YEAST tokens. This is intended to be more of\nan \\\"executable specification\\\" for YAML rather than an\nactual basis for YAML tool chains. That said, it is\npossible to build interesting tools on top of it, such as\nthe @yeast2html@ YAML syntax visualizer (contained in this\npackage), pretty printers, etc. This is a streaming parser\nthat will \\\"immediately\\\" begin to generate output. Updated\nto lift the 1K key size limit inside flow mapping for\ncomplete JSON compatibility.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "yaml2yeast" = { buildable = true; };
        "yaml2yeast-test" = {
          depends = (pkgs.lib).optional (flags.small_base) (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"));
          buildable = true;
          };
        };
      };
    }