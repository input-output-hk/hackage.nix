{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "MiniAgda"; version = "0.2016.12.19"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
      author = "Andreas Abel and Karl Mehltretter";
      homepage = "http://www.tcs.ifi.lmu.de/~abel/miniagda/";
      url = "";
      synopsis = "A toy dependently typed programming language with type-based termination.";
      description = "MiniAgda is a tiny dependently-typed programming language in the style\nof Agda. It serves as a laboratory to test potential additions to the\nlanguage and type system of Agda. MiniAgda's termination checker is a\nfusion of sized types and size-change termination and supports\ncoinduction. Equality incorporates eta-expansion at record and\nsingleton types. Function arguments can be declared as static; such\narguments are discarded during equality checking and compilation.\nRecent features include bounded size quantification and destructor\npatterns for a more general handling of coinduction.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "miniagda" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }