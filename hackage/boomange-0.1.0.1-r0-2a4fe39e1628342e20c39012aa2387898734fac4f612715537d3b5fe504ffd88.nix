{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boomange"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013,2014 Marcelo Garlet Millani";
      maintainer = "marcelogmillani@gmail.com";
      author = "Marcelo Garlet Millani";
      homepage = "";
      url = "";
      synopsis = "A Bookmarks manager with a HTML generator";
      description = "In order to allow a unified and customized bookmarks file, boomange generates a HTML file with an user's bookmarks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "boomange" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."descrilo" or ((hsPkgs.pkgs-errors).buildDepError "descrilo"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."simtreelo" or ((hsPkgs.pkgs-errors).buildDepError "simtreelo"))
            ];
          buildable = true;
          };
        };
      };
    }