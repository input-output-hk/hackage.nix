{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "xls2csv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."getopt-generics" or (errorHandler.buildDepError "getopt-generics"))
            (hsPkgs."xls" or (errorHandler.buildDepError "xls"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xls" or (errorHandler.buildDepError "xls"))
          ];
          buildable = true;
        };
      };
    };
  }