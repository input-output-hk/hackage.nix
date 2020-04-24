{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "barley"; version = "0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "markl@glyphic.com";
      author = "Johan Tibell, Mark Lentczner";
      homepage = "";
      url = "";
      synopsis = "A web based environment for learning and tinkering with Haskell";
      description = "Barley is an environment for tinkering with Haskell.  It is a web\nserver with an embedded simple programming environment rendered as\nweb pages.  The environment allows you to easily edit Haskell code\nand quickly see the result of running it.\nBarley includes a tutorial aimed at people with some programming\nand web experience, but it assumes no exposure to Haskell or\nfunctional programming.  The tutorial takes the developer from\ngenerating a simple web page through a modest web application with\ndatabase backend storage.  Along the way it exposes the programmer\nto the basic idioms needed to do simple programming tasks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "barley" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }