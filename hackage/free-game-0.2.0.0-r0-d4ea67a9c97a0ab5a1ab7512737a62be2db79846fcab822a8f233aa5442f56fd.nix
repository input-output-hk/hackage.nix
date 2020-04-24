{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "free-game"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free.";
      description = "Create something graphical with useful free monads.\n\n/Small instruction/\n\n* load your image by loadBitmapFromFile, embedIO, and loadPicture.\n\n* describe an application using drawPicture, askInput, tick, and so on, in Game monad.\n\n* apply `runGame defaultGameParam` to run.\n\n* That's all!\n\nIn windows, free-game requires DXFI.dll. You can obtain it from <http://botis.org/shared/dist/DXFI-0.2.dll>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."JuicyPixels-repa" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels-repa"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
          (hsPkgs."stb-truetype" or ((hsPkgs.pkgs-errors).buildDepError "stb-truetype"))
          ];
        buildable = true;
        };
      };
    }