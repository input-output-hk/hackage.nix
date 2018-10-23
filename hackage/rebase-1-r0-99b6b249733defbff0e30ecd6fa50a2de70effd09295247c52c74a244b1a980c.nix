{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rebase";
        version = "1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/rebase";
      url = "";
      synopsis = "A more progressive alternative to the \"base\" package";
      description = "This package is intended for those who are tired of keeping\nlong lists of dependencies to the same essential libraries in each package\nas well as the endless imports of the same APIs all over again.\nIt also supports the modern tendencies in the language.\n\nTo solve those problems this package does the following:\n\n* Reexport the original APIs under the \\\"Rebase\\\" namespace.\n\n* Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module.\n\n* Give priority to the modern practices in the conflicting cases.\n\nThe policy behind the package is only to reexport the non-ambiguous\nand non-controversial APIs, which the community has obviously settled on.\nThe package is intended to rapidly evolve with the contribution from the community,\nwith the missing features being added with pull-requests.";
      buildType = "Simple";
    };
    components = {
      "rebase" = {
        depends  = [
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.scientific)
          (hsPkgs.uuid)
          (hsPkgs.dlist)
          (hsPkgs.void)
          (hsPkgs.time)
          (hsPkgs.bifunctors)
          (hsPkgs.profunctors)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.fail)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }