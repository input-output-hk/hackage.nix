{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "BirdPP";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "seanmcl@gmail.com";
      author = "Sean McLaughlin";
      homepage = "";
      url = "";
      synopsis = "A preprocessor for Bird-style Literate Haskell comments with Haddock markup.";
      description = "Literate preprocessor that allows intuitive Haddock comments.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "BirdPP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }