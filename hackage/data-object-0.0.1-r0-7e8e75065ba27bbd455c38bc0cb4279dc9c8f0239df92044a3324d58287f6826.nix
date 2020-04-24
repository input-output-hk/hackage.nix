{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "data-object"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/data-object/tree/master";
      url = "";
      synopsis = "Represent hierachichal structures, called objects in JSON.";
      description = "These objects show up in different places, eg JSON, Yaml.\nBy providing a representation in a separate repository,\nother libraries can share a single representation of\nthese structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring-class" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-class"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }