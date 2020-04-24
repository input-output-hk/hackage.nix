{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "re2"; version = "0.1"; };
      license = "MIT";
      copyright = "lib/: John Millikin; third-party/: Google Inc";
      maintainer = "John Millikin <john@john-millikin.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://john-millikin.com/software/haskell-re2/";
      url = "";
      synopsis = "Bindings to the re2 regular expression library";
      description = "re2 is a regular expression library offering predictable run-time and\nmemory consumption. This package is a binding to re2.\n\nSupported expression syntax is documented at\n<http://code.google.com/p/re2/wiki/Syntax>.\n\n>\$ ghci -XOverloadedStrings\n>ghci> import Regex.RE2\n>\n>ghci> find \"\\\\w+\" \"hello world\"\n>Just (Match [Just \"hello\"])\n>\n>ghci> find \"\\\\w+\$\" \"hello world\"\n>Just (Match [Just \"world\"])\n>\n>ghci> find \"^\\\\w+\$\" \"hello world\"\n>Nothing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."re2" or ((hsPkgs.pkgs-errors).buildDepError "re2"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."chell" or ((hsPkgs.pkgs-errors).buildDepError "chell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }