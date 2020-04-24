{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hunp"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "deniz.a.m.dogan@gmail.com";
      author = "Deniz Dogan";
      homepage = "http://github.com/skorpan/hunp/tree/master";
      url = "";
      synopsis = "Unpacker tool with DWIM";
      description = "hunp is an unpacker tool which does what you mean.  By matching on regular expressions, it automagically calls the right unpacking program for you, e.g. \"unrar\" for files ending in \".rar\", etc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hunp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }