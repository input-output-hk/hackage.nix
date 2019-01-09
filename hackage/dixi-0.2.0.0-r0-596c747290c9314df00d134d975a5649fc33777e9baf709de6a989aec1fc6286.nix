{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dixi"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/dixi";
      url = "";
      synopsis = "A wiki implemented with a firm theoretical foundation.";
      description = "This project is a simple wiki developed based on a\nfirm theoretical foundation.\n\nDocuments are not stored directly, but as a composition\ntree of patches to an initial empty document. As our\npatches support operational transform, edits can be\nmade to any version of each document and they are\ntransformed to be applied to the latest version.\n\nThis also makes it easy to use the group structure of\npatches to be able to revert changes (or the composition\nof several changes) from deep in a document's history and\npreserve every other change.\n\nRight now the wiki doesn't support many bells and whistles,\nsuch as administrator control, configurability, or user accounts,\nbut they're coming.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dixi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.composition-tree)
            (hsPkgs.patches-vector)
            (hsPkgs.pandoc)
            (hsPkgs.servant)
            (hsPkgs.acid-state)
            (hsPkgs.safecopy)
            (hsPkgs.lens)
            (hsPkgs.servant-server)
            (hsPkgs.blaze-html)
            (hsPkgs.servant-blaze)
            (hsPkgs.blaze-markup)
            (hsPkgs.shakespeare)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.warp)
            (hsPkgs.data-default)
            (hsPkgs.either)
            (hsPkgs.template-haskell)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            ];
          };
        };
      };
    }