{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wilton-ffi"; version = "0.3.0.3"; };
      license = "MIT";
      copyright = "2018 alex at staticlibs.net";
      maintainer = "alex at staticlibs.net";
      author = "alex at staticlibs.net";
      homepage = "https://github.com/wilton-iot/wilton-ffi#readme";
      url = "";
      synopsis = "Haskell modules support for Wilton JavaScript runtime";
      description = "Please see the README on GitHub at <https://github.com/wilton-iot/wilton-ffi#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }