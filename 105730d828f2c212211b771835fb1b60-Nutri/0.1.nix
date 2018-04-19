{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Nutri";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "frosch03@frosch03.de";
        author = "Matthias Brettschneider";
        homepage = "https://github.com/frosch03/Nutri";
        url = "";
        synopsis = "A little library to calculate nutrition values of food items.";
        description = "This is the start of a library that helps to calculate with\nnutrition values of food items. There is a basic datatype for\nweight information and one for the nutrient information of food.\nOne can combine variouse foods together and let the library\ncalculate the overall protein, carbohydrate and fat percentages\nas well as the caloric value.";
        buildType = "Simple";
      };
      components = {
        Nutri = {
          depends  = [ hsPkgs.base ];
        };
      };
    }