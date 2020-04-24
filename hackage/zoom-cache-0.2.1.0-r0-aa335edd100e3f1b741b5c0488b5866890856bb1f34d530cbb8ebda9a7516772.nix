{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "zoom-cache"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "A streamable, seekable, zoomable cache file format";
      description = "This library provides a monadic writing and iteratee reading\ninterface for zoom-cache files.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "zoom-cache" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
            (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ui-command" or ((hsPkgs.pkgs-errors).buildDepError "ui-command"))
            ];
          buildable = true;
          };
        };
      };
    }