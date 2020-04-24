{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fsutils"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "i@raynes.me";
      author = "Anthony Grimes";
      homepage = "https://github.com/Raynes/fsutils";
      url = "";
      synopsis = "File system utilities for Haskell that are missing from built in libraries.";
      description = "A collection of file system utilities such as recursive\ndirectory walks and listings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }