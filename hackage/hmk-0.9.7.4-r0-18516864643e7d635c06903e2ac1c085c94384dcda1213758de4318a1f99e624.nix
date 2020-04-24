{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "hmk"; version = "0.9.7.4"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008-2009. Mathieu Boespflug <mboes - at - tweag.net>";
      maintainer = "Mathieu Boespflug <mboes - at - tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "http://www.github.com/mboes/hmk";
      url = "";
      synopsis = "A make alternative based on Plan9's mk.";
      description = "Clone of Plan9's mk command, said to have \\\"improved on make by\nremoving all the vowels from the name\\\". Most features of mk\nare implemented, including basic meta-rules support and\nconcurrent execution of jobs.\n\nThe library exports a generic dependency graph traversal that\ncan be used independently of the rest.\n\nThe documentation is embedded in the literate Haskell source.\n\n/Note:/ the library portion is released to the /public domain/.\nThose source files that are not part of the library\nare released under GPLv3 or later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "hmk" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
            ];
          buildable = true;
          };
        };
      };
    }