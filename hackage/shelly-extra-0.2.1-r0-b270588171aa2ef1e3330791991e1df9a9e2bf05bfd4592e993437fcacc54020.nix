{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "shelly-extra"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber";
      homepage = "https://github.com/yesodweb/Shelly.hs";
      url = "";
      synopsis = "shelly features that require extra dependencies";
      description = "Please see the shelly package. Shelly provides a single module for convenient\nsystems programming in Haskell, similar in spirit to POSIX shells.\n\nshelly-extra is designed to be a grab bag for functionality that\n* requires extra dependencies\n\n* or is application specific and not generally applicable\n\ncurrently contains a background job implementation for performing tasks in parallel";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
          (hsPkgs."SafeSemaphore" or ((hsPkgs.pkgs-errors).buildDepError "SafeSemaphore"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."SafeSemaphore" or ((hsPkgs.pkgs-errors).buildDepError "SafeSemaphore"))
            ];
          buildable = true;
          };
        };
      };
    }