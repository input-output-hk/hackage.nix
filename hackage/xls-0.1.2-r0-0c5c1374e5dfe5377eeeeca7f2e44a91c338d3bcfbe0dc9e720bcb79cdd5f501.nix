{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { force-has-iconv = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xls"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Harendra Kumar,\n2004-2014 Authors of libxls";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "http://github.com/harendra-kumar/xls";
      url = "";
      synopsis = "Parse Microsoft Excel xls files (BIFF/Excel 97-2004)";
      description = "Parse Microsoft Excel spreadsheet files in @.xls@ file format\n(extension '.xls') more specifically known as 'BIFF/Excel 97-2004'.\n\nThe library is based on the C library\n'https://github.com/libxls/libxls'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "xls2csv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."getopt-generics" or ((hsPkgs.pkgs-errors).buildDepError "getopt-generics"))
            (hsPkgs."xls" or ((hsPkgs.pkgs-errors).buildDepError "xls"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xls" or ((hsPkgs.pkgs-errors).buildDepError "xls"))
            ];
          buildable = true;
          };
        };
      };
    }