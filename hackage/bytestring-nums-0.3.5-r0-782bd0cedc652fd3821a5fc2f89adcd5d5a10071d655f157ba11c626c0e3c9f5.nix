{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cli = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bytestring-nums"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/bytestring-nums";
      url = "";
      synopsis = "Parse numeric literals from ByteStrings.";
      description = "Parse numeric literals from ByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "spoj-eugene" = { buildable = if flags.cli then true else false; };
        };
      };
    }