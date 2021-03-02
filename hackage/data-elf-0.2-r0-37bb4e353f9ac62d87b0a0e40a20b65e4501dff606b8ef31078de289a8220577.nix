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
      specVersion = "1.10";
      identifier = { name = "data-elf"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-elf";
      url = "";
      synopsis = "Executable and Linkable Format (ELF) data structures.";
      description = "This package provides Executable and Linkable Format (ELF) data structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-sword" or (errorHandler.buildDepError "data-sword"))
          (hsPkgs."data-flags" or (errorHandler.buildDepError "data-flags"))
          (hsPkgs."data-serializer" or (errorHandler.buildDepError "data-serializer"))
          ];
        buildable = true;
        };
      };
    }