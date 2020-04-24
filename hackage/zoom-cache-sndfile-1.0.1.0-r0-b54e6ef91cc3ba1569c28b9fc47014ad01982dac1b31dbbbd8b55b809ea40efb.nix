{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "zoom-cache-sndfile"; version = "1.0.1.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "Tools for generating zoom-cache-pcm files";
      description = "zoom-cache-sndfile provides tools for encoding and dumping zoom-cache-pcm files.\nSee the zoom-cache-pcm and zoom-cache packages for more information about\nzoom-cache files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zoom-cache-sndfile" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ui-command" or ((hsPkgs.pkgs-errors).buildDepError "ui-command"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."zoom-cache" or ((hsPkgs.pkgs-errors).buildDepError "zoom-cache"))
            (hsPkgs."zoom-cache-pcm" or ((hsPkgs.pkgs-errors).buildDepError "zoom-cache-pcm"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }