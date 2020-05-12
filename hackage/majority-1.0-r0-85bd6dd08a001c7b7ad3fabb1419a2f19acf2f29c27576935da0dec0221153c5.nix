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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "majority"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "niswegmann@gmail.com";
      author = "Nis N. Wegmann";
      homepage = "https://github.com/niswegmann/majority";
      url = "";
      synopsis = "Boyer-Moore Majority Vote Algorithm";
      description = "The Boyer-Moore Majority Vote Algorithm determines if there in a list of votes\nis a candidate that holds more than half of the majority, and if so, finds\nthis candidate. It does so in time linear in the length of the input list and\nconstant memory. For a detailed description of the algorithm, see these papers:\n\n* Wim H. Hesselink,\n\\\"/The Boyer-Moore Majority Vote Algorithm/\\\",\n2005;\n\n* Robert S. Boyer and J. Strother Moore,\n\\\"/MJRTY - A Fast Majority Vote Algorithm/\\\",\n1982.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
          ];
        buildable = true;
        };
      };
    }