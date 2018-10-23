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
        version = "0.0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/th-extras";
      url = "";
      synopsis = "A grab bag of useful functions for use with Template Haskell";
      description = "A grab bag of useful functions for use with Template Haskell";
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