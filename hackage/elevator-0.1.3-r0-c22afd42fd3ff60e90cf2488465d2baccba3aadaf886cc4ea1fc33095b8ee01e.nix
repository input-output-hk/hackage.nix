{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elevator"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/elevator";
      url = "";
      synopsis = "Immediately lifts to a desired level";
      description = "This package provides 'elevate' function which composes 'lift'-like transformations automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."clean-unions" or ((hsPkgs.pkgs-errors).buildDepError "clean-unions"))
          ];
        buildable = true;
        };
      };
    }