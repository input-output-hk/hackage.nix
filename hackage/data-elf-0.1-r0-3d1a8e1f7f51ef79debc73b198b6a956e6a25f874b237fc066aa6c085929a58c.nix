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
      identifier = { name = "data-elf"; version = "0.1"; };
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))
          (hsPkgs."data-sword" or (errorHandler.buildDepError "data-sword"))
          (hsPkgs."data-flags" or (errorHandler.buildDepError "data-flags"))
          (hsPkgs."text-latin1" or (errorHandler.buildDepError "text-latin1"))
          ];
        buildable = true;
        };
      };
    }