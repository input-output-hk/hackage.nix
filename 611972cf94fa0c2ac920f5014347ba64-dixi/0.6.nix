{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      old-base = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dixi";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/dixi";
      url = "";
      synopsis = "A wiki implemented with a firm theoretical foundation.";
      description = "This project is a simple wiki developed based on a\nfirm theoretical foundation.\n\nDocuments are not stored directly, but as a composition\ntree of patches to an initial empty document. As our\npatches support operational transform, edits can be\nmade to any version of each document and they are\ntransformed to be applied to the latest version.\n\nThis also makes it easy to use the group structure of\npatches to be able to revert changes (or the composition\nof several changes) from deep in a document's history and\npreserve every other change.\n\nRight now the wiki doesn't support many bells and whistles,\nsuch as administrator control, or user accounts,\nbut they're coming.";
      buildType = "Simple";
    };
    components = {
      "dixi" = {
        depends  = [
          (hsPkgs.composition-tree)
          (hsPkgs.patches-vector)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.acid-state)
          (hsPkgs.safecopy)
          (hsPkgs.lens)
          (hsPkgs.blaze-html)
          (hsPkgs.servant-blaze)
          (hsPkgs.blaze-markup)
          (hsPkgs.shakespeare)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.either)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.bytestring)
          (hsPkgs.network-uri)
          (hsPkgs.timezone-olson)
          (hsPkgs.timezone-series)
          (hsPkgs.heredoc)
        ] ++ (if _flags.old-base
          then [
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.transformers-compat)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "dixi" = {
          depends  = [
            (hsPkgs.dixi)
            (hsPkgs.warp)
            (hsPkgs.servant-server)
            (hsPkgs.directory)
            (hsPkgs.yaml)
            (hsPkgs.acid-state)
            (hsPkgs.text)
            (hsPkgs.filepath)
          ] ++ (if _flags.old-base
            then [
              (hsPkgs.base)
              (hsPkgs.base-orphans)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
      tests = {
        "api-docs" = {
          depends  = [
            (hsPkgs.dixi)
            (hsPkgs.servant-docs)
            (hsPkgs.text)
            (hsPkgs.servant)
            (hsPkgs.time)
            (hsPkgs.lens)
            (hsPkgs.aeson-pretty)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.shakespeare)
            (hsPkgs.vector)
            (hsPkgs.patches-vector)
            (hsPkgs.servant-blaze)
          ] ++ (if _flags.old-base
            then [
              (hsPkgs.base)
              (hsPkgs.base-orphans)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }