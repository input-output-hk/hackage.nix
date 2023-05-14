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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "SvgIcons"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ramiro";
      maintainer = "ramir659@icloud.com";
      author = "Ramiro";
      homepage = "https://github.com/RamiroPastor/SvgIcons";
      url = "";
      synopsis = "Svg Icons and more";
      description = "@deprecated\nPlease go to [svg-icons](https://hackage.haskell.org/package/svg-icons)";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }