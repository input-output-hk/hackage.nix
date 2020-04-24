{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "system-canonicalpath"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) Boris Buliga, 2014";
      maintainer = "Boris Buliga <d12frosted@icloud.com>";
      author = "Boris Buliga <d12frosted@icloud.com>";
      homepage = "https://github.com/d12frosted/CanonicalPath";
      url = "";
      synopsis = "Abstract data type for canonical paths with pretty operations";
      description = "This library provides abstract data type named 'CanonicalPath' and some useful functions for working with it. See every module's description to find out more.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }