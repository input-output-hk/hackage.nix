{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "stringtable-atom"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "John Meacham 2008, Audrey Tang 2008";
      maintainer = "audreyt@audreyt.org";
      author = "John Meacham";
      homepage = "";
      url = "";
      synopsis = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
      description = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }