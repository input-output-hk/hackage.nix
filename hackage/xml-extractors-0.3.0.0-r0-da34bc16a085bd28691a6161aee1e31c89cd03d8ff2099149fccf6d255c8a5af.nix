{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xml-extractors"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "holmisen@gmail.com";
      author = "Johan Holmquist";
      homepage = "https://github.com/holmisen/xml-extractors";
      url = "";
      synopsis = "Wrapper over xml to extract data from parsed xml";
      description = "This is a library to simplify extraction of data from parsed xml.\n\nSee the 'Text.XML.Light.Extractors' module for an example.\n\n/Motivation/\n\nThe `xml` package provides functions to parse and get information from\nxml data. It will parse an xml string into a generic tree\nrepresentation. Extracting information from such a tree while\nkeeping track of location to handle errors is tricky. This library\nhelps with that.\n\nIf there is an error during extraction (expected information is\nabsent or wrong), it will return an error value with position information.\n\n/Some limitations/\n\n* Only handles unqualified names. (This is by design to simplify usage.)\n\n* No column number and sometimes no line number reference in error values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      };
    }