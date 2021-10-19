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
    flags = { base4 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "list-extras"; version = "0.4.1.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007–2021 wren gayle romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "Common not-so-common functions for lists";
      description = "Common not-so-common functions for lists.\n\nSince \"Data.List.Extras\" is prime realestate for\nextensions to \"Data.List\", if you have something\nyou'd like to contribute feel free to contact the\nmaintainer (I'm friendly). I'm amenable to adopting\ncode if you think your functions aren't enough for\na package on their own. Or if you would rather\nmaintain a separate package I can share the\n@Data.List.Extras.Foo@ namespace.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }