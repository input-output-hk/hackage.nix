{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "supercollider-ht";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2008-2009";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskell SuperCollider utilities";
      description = "Some additional modules I regular use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* play routines using the Transport monad from opensoundcontrol-ht\n\n* example effects";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.opensoundcontrol-ht)
          (hsPkgs.transformers)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.base)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "timing-example" = {};
      };
    };
  }