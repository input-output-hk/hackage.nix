{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "MiniAgda"; version = "0.2018.11.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@cse.gu.se>";
      author = "Andreas Abel and Karl Mehltretter";
      homepage = "http://www.cse.chalmers.se/~abela/miniagda/";
      url = "";
      synopsis = "A toy dependently typed programming language with type-based termination.";
      description = "MiniAgda is a tiny dependently-typed programming language in the style\nof Agda. It serves as a laboratory to test potential additions to the\nlanguage and type system of Agda. MiniAgda's termination checker is a\nfusion of sized types and size-change termination and supports\ncoinduction. Equality incorporates eta-expansion at record and\nsingleton types. Function arguments can be declared as static; such\narguments are discarded during equality checking and compilation.\nRecent features include bounded size quantification and destructor\npatterns for a more general handling of coinduction.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "miniagda" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
            ];
          };
        };
      };
    }