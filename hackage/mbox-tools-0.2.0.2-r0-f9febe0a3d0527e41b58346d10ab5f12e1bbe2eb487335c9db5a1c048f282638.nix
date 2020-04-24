{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use_hutt = false; useless = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-tools"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "https://github.com/np/mbox-tools";
      url = "";
      synopsis = "A collection of tools to process mbox files";
      description = "A collection of tools to process mbox files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mbox-counting" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            ];
          buildable = true;
          };
        "mbox-average-size" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-quoting" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "redact-mbox" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-list" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-pick" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-partition" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        "mbox-grep" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (flags.use_hutt) (hsPkgs."hutt" or ((hsPkgs.pkgs-errors).buildDepError "hutt"));
          buildable = if flags.use_hutt then true else false;
          };
        "split-mbox" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-iter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "mbox-from-files" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }