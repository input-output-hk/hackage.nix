{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use_hutt = false; useless = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-tools"; version = "0.2.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."codec-mbox" or ((hsPkgs.pkgs-errors).buildDepError "codec-mbox"))
          (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
          ];
        buildable = true;
        };
      exes = {
        "mbox-counting" = { buildable = true; };
        "mbox-average-size" = {
          buildable = if !flags.useless then false else true;
          };
        "mbox-quoting" = {
          buildable = if !flags.useless then false else true;
          };
        "redact-mbox" = {
          depends = [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-list" = { buildable = true; };
        "mbox-pick" = { buildable = true; };
        "mbox-partition" = { buildable = true; };
        "mbox-grep" = {
          depends = (pkgs.lib).optional (flags.use_hutt) (hsPkgs."hutt" or ((hsPkgs.pkgs-errors).buildDepError "hutt"));
          buildable = if flags.use_hutt then true else false;
          };
        "split-mbox" = { buildable = true; };
        "mbox-iter" = {
          depends = [
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "mbox-from-files" = { buildable = true; };
        };
      };
    }