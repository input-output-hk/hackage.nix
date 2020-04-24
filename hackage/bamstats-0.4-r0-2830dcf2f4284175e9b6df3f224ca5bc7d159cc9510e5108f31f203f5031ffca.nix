{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bamstats"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/posts/bamstats.html";
      url = "";
      synopsis = "A program to extract various information from BAM alignmnet files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "bam" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."samtools" or ((hsPkgs.pkgs-errors).buildDepError "samtools"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }