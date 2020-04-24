{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bash"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/bash";
      url = "";
      synopsis = "Bash generation library.";
      description = "A library for generation of Bash scripts, handling escaping, statement\ngrouping and expression formation at a high level.\n\nThe top-level module, Language.Bash, is all you need to import to access the\npackage's functionality. The module Language.Bash.Lib contains some\nexamples, as does the test script, tests.bash, included with the source\ndistribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."shell-escape" or ((hsPkgs.pkgs-errors).buildDepError "shell-escape"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."hxt-regex-xmlschema" or ((hsPkgs.pkgs-errors).buildDepError "hxt-regex-xmlschema"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }