{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "capped-list"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 John Millikin <jmillikin@gmail.com>";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A list-like type for lazy sequences, with a user-defined termination value.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."empty" or ((hsPkgs.pkgs-errors).buildDepError "empty"))
          ];
        buildable = true;
        };
      };
    }