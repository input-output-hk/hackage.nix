{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "flower"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/biohaskell/flower";
      url = "";
      synopsis = "Analyze 454 flowgrams  (.SFF files)";
      description = "flower - The FLOWgram ExtracteR\n\nReads files in SFF-format and produces various output, including sequences\nwith quality, or flowgram data in tabular format.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flower>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flower" = {
          depends = [
            (hsPkgs."bio" or ((hsPkgs.pkgs-errors).buildDepError "bio"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        };
      };
    }