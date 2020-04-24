{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "json-b"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jsonb@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/jsnx/JSONb/";
      url = "";
      synopsis = "JSON parser that uses byte strings.";
      description = "This parser consumes lazy ByteStrings to produce JSON in a simple, efficient\nformat backed with a strict ByteStrings, Rationals and ByteString tries. See\nthe schema generation tools and the command line JSON schema generator (in\nthe examples subdir) for an example of how to use the parsing tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestringparser-temporary" or ((hsPkgs.pkgs-errors).buildDepError "bytestringparser-temporary"))
          (hsPkgs."bytestring-nums" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-nums"))
          (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
          ];
        buildable = true;
        };
      exes = {
        "json-schema" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestringparser-temporary" or ((hsPkgs.pkgs-errors).buildDepError "bytestringparser-temporary"))
            (hsPkgs."bytestring-nums" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-nums"))
            (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
            ];
          buildable = true;
          };
        };
      };
    }