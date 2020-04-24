{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "json-builder"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Leon P Smith";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "http://github.com/lpsmith/json-builder";
      url = "";
      synopsis = "Data structure agnostic JSON serialization";
      description = "Most json packages dictate a data structure that corresponds to json values.\nTo serialize other values to json, then that value must be marshalled into\nthe specified structure.\n\nThis library avoids this marshalling step, and is thus potentially more\nefficient when serializing arbitrary data structures.  Unfortunately\njson-builder cannot yet read or process json data,  and it's not clear\nto me yet how pull a similar kind of trick to avoid unnecessary data\nstructures when parsing json data into arbitrary data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."blaze-textual" or ((hsPkgs.pkgs-errors).buildDepError "blaze-textual"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }