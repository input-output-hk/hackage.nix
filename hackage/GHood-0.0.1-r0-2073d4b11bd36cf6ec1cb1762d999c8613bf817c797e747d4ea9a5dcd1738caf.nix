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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GHood"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Hugo Pacheco\nCopyright (c) 2004, Alcino Cunha\nCopyright (c) 2000, Claus Reinke\nCopyright (c) 1992-2000, Andy Gill";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Claus Reinke";
      homepage = "http://www.cs.kent.ac.uk/people/staff/cr3/toolbox/haskell/GHood/#Applets";
      url = "";
      synopsis = "A graphical viewer for Hood";
      description = "GHood is a graphical back-end for Hood, the front-end (the Haskell interface) is precisely that of Hood. If you have been using Hood already you won't have to change your programs to switch to GHood. If you haven't used Hood before, you can employ all the nice definitions in Hood's Observe library, just as explained in the Hood documentation (see the Hood homepage at http://www.haskell.org/hood/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }