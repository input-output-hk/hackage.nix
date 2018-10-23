{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "th-extras";
        version = "0.0.0.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/th-extras";
      url = "";
      synopsis = "A grab bag of functions for use with Template Haskell";
      description = "A grab bag of functions for use with Template Haskell.\n\nThis is basically the place I put all my ugly CPP hacks to support\nthe ever-changing interface of the template haskell system by\nproviding high-level operations and making sure they work on as many\nversions of Template Haskell as I can.";
      buildType = "Simple";
    };
    components = {
      "th-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optionals (flags.base4) [
          (hsPkgs.base)
          (hsPkgs.syb)
        ];
      };
    };
  }