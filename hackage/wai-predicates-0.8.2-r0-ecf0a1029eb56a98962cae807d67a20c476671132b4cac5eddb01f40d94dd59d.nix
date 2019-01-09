{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-predicates"; version = "0.8.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/wai-predicates/";
      url = "";
      synopsis = "WAI request predicates";
      description = "Evaluate predicate functions against WAI requests and receive\nmetadata in addition to a success/failure indicator.\nPredicates can be combined using logical connectives and the\nmetadata are passed on accordingly.\n\n<http://hackage.haskell.org/package/wai-routing wai-routing>\nextends the functionality of @wai-predicates@ with additional\npredicates and predicated request routing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-conversion)
          (hsPkgs.cookie)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.singletons)
          (hsPkgs.transformers)
          (hsPkgs.vault)
          (hsPkgs.vector)
          (hsPkgs.wai)
          ];
        };
      tests = {
        "wai-predicate-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-types)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.wai)
            (hsPkgs.wai-predicates)
            ];
          };
        };
      };
    }