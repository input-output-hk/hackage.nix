{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "data-object-json"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/data-object-json/tree/master";
      url = "";
      synopsis = "Serialize JSON data to/from Haskell using the data-object library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."json-b" or ((hsPkgs.pkgs-errors).buildDepError "json-b"))
          (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-object" or ((hsPkgs.pkgs-errors).buildDepError "data-object"))
          (hsPkgs."attempt" or ((hsPkgs.pkgs-errors).buildDepError "attempt"))
          (hsPkgs."convertible-text" or ((hsPkgs.pkgs-errors).buildDepError "convertible-text"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }