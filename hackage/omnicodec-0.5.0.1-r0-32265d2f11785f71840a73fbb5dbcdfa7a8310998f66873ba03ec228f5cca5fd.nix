{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "omnicodec"; version = "0.5.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Magnus Therning, 2007-2011";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "data encoding and decoding command line utilities";
      description = "Two simple command line tools built on dataenc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
            ];
          buildable = true;
          };
        "oenc" = { buildable = true; };
        };
      };
    }